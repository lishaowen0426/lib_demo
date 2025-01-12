#include "Graphs/SVFG.h"
#include "SVF-LLVM/LLVMUtil.h"
#include "SVF-LLVM/SVFIRBuilder.h"
#include "Util/SVFUtil.h"
#include "WPA/Andersen.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include <cstdlib>
#include <deque>
#include <iostream>
#include <memory>
#include <set>
#include <sstream>
#include <string>
#include <vector>
using namespace llvm;
using namespace SVF;

// static std::string LLVM_SVF_INPUT =
//     "/home/swli/rust-isolation/lib_demo/lib_demo.svf.ll";
static std::string LLVM_SVF_INPUT =
    "/home/swli/rust-isolation/lib_demo/svf-test/test.ll";

typedef struct {
  const Value *dest;
  std::vector<const Value *> val;
} TaintSource;

std::ostream &operator<<(std::ostream &os, const TaintSource &src) {
  os << "dest: ";
  if (src.dest) {
    std::string destStr;
    llvm::raw_string_ostream rso(destStr);
    src.dest->print(rso); // Use LLVM's print method
    os << rso.str();
  } else {
    os << "null";
  }
  os << ", val: [";
  for (size_t i = 0; i < src.val.size(); ++i) {
    if (i > 0) {
      os << ", ";
    }

    std::string valStr;
    llvm::raw_string_ostream rso(valStr);
    src.val[i]->print(rso); // Print each value in the vector
    os << rso.str();
  }
  os << "]";

  return os;
}

class SvfTainter {
private:
  std::vector<TaintSource> taintSources;
  std::set<const AllocaInst *> alloca_to_replace;
  Module *M;
  LLVMModuleSet *mSet;
  SVFIR *pag;
  Andersen *ander;
  VFG *vfg;

  void processIRForTaintSource(Instruction &I);
  void processVFGNode(const VFGNode *dst,
                      FIFOWorkList<const VFGNode *> &worklist);

  void processDestVal(const Value *dest);

public:
  SvfTainter(Module *M) : M(M) {
    SVFModule *svfModule = LLVMModuleSet::buildSVFModule(*M);
    SVFIRBuilder svfIRbuilder(svfModule);
    mSet = LLVMModuleSet::getLLVMModuleSet();
    pag = svfIRbuilder.build();
    {
      std::streambuf *originalBuffer = std::cout.rdbuf();
      std::ostringstream nullStream;
      std::cout.rdbuf(nullStream.rdbuf());
      ander = AndersenWaveDiff::createAndersenWaveDiff(pag);
      vfg = new VFG(ander->getCallGraph());
      vfg->dump("vfg.dot");
      pag->dump("pag.dot");
      std::cout.rdbuf(originalBuffer);
    }
  }

  void collectTaintSources();
  void propagateTaint();

  void printTaintSources() {
    std::cout << "Taint Sources: "
              << "\n";
    for (auto s : taintSources) {
      std::cout << s << "\n";
    }
  }

  void printResult() {
    outs() << "Result: "
           << "\n";
    for (auto *ai : alloca_to_replace) {
      outs() << *ai << "\n";
    }
  }
};

void SvfTainter::collectTaintSources() {
  for (auto &F : *M) {
    for (auto &BB : F) {
      for (auto &I : BB) {
        if (MDNode *MD = I.getMetadata("svf")) {
          // outs() << "Found instruction: " << I << "\n";
          processIRForTaintSource(I);
        }
      }
    }
  }
}

/// The store instruction in LLVM IR is indeed the most common instruction
/// for modifying the value at a specific memory location,
/// but it is not the only instruction that can change memory.
/// There are other instructions that can also modify memory content.
void SvfTainter::processIRForTaintSource(Instruction &I) {
  if (auto *allocaInst = dyn_cast<AllocaInst>(&I)) {
    taintSources.push_back(TaintSource{allocaInst, {}});
  } else if (auto *storeInst = dyn_cast<StoreInst>(&I)) {
    taintSources.push_back(TaintSource{storeInst->getPointerOperand(),
                                       {storeInst->getValueOperand()}});

  } else if (auto *atomicrmwInst = dyn_cast<AtomicRMWInst>(&I)) {
    taintSources.push_back(TaintSource{atomicrmwInst->getPointerOperand(),
                                       {atomicrmwInst->getValOperand()}});
  } else if (auto *cmpxchgInst = dyn_cast<AtomicCmpXchgInst>(&I)) {
    taintSources.push_back(TaintSource{cmpxchgInst->getPointerOperand(),
                                       {cmpxchgInst->getNewValOperand()}});
  } else if (auto *insertValueInst = dyn_cast<InsertValueInst>(&I)) {
    taintSources.push_back(
        TaintSource{insertValueInst->getAggregateOperand(),
                    {insertValueInst->getInsertedValueOperand()}});
  } else if (auto *callInst = dyn_cast<CallInst>(&I)) {
    std::vector<const Value *> args;
    for (unsigned i = 0; i < callInst->arg_size(); ++i) {
      const llvm::Value *arg = callInst->getArgOperand(i); // Get the argument
      args.push_back(arg);
    }
    if (callInst->getType()->isVoidTy()) {
      taintSources.push_back(TaintSource{nullptr, args});
    } else {
      taintSources.push_back(TaintSource{callInst, args});
    }
  }
}

void SvfTainter::processDestVal(const Value *dest) {
  SVFValue *svfval = mSet->getSVFValue(dest);
  std::cout << "dest svf value: " << *svfval << "\n";
  if (pag->hasValueNode(svfval)) {
    PAGNode *current = pag->getGNode(pag->getValueNode(svfval));
    if (auto *allocaInst =
            dyn_cast<AllocaInst>(mSet->getLLVMValue(current->getValue()))) {
      alloca_to_replace.insert(allocaInst);
      return;
    } else if (auto extracInst = dyn_cast<ExtractValueInst>(
                   mSet->getLLVMValue(current->getValue()))) {
      return processDestVal(extracInst->getAggregateOperand());
    } else {
      for (auto e : current->getInEdges()) {
        if (auto s = dyn_cast<GepStmt>(e)) {
          auto *srcNode = e->getSrcNode();
          auto srcIR = mSet->getLLVMValue(srcNode->getValue());
          processDestVal(srcIR);
        } else if (auto s = dyn_cast<LoadStmt>(e)) {
          auto *srcNode = e->getSrcNode();
          auto srcIR = mSet->getLLVMValue(srcNode->getValue());
          processDestVal(srcIR);
        }
      }
    }
  } else {
    std::cerr << "SVF value: " << *svfval << " has no pag node\n";
    abort();
  }
}

void SvfTainter::propagateTaint() {

  for (auto src : taintSources) {

    const Value *dest = src.dest;
    if (dest != nullptr) {
      processDestVal(dest);
    }

    for (auto *op : src.val) {
    }
  }
}

/// all popped VFG nodes are defition node, i.e., instructions that create a
/// variable For example, alloca, load, call, phi, binary, gep, etc. we need to
/// TAINT BACK to where it is eventually alloca so that we can replace
///  ; Allocate a struct with two fields: an i32 and a pointer to i32
///  %struct_ptr = alloca { i32, i32* }, align 8

///  ; Get a pointer to the second element of the struct (a pointer to i32)
///  %gep = getelementptr { i32, i32* }, { i32, i32* }* %struct_ptr, i32 0, i32
///  1

void SvfTainter::processVFGNode(const VFGNode *vnode,
                                FIFOWorkList<const VFGNode *> &worklist) {
  auto nodeToLLVMValue = [this](const VFGNode *node) {
    return mSet->getLLVMValue(node->getValue());
  };
  auto pushToWorklist = [this, &worklist](const VFGNode *src, NodeID id) {
    std::cout << "source id: " << id << "\n";
    for (const VFGEdge *edge : src->getOutEdges()) {
      if (edge->isIntraVFGEdge() || edge->isCallVFGEdge()) {
        const VFGNode *dst = edge->getDstNode();
        // for store/copy/gep/load, the tainted variable should be the source
        if (auto *storeNode = SVFUtil::dyn_cast<StoreVFGNode>(dst)) {
          if (id == storeNode->getPAGSrcNodeID()) {
            worklist.push(dst);
          }
        } else if (auto *copyNode = SVFUtil::dyn_cast<CopyVFGNode>(dst)) {
          if (id == copyNode->getPAGSrcNodeID()) {
            worklist.push(dst);
          }
        } else if (auto *gepNode = SVFUtil::dyn_cast<GepVFGNode>(dst)) {
          if (id == gepNode->getPAGSrcNodeID()) {
            worklist.push(dst);
          }
        } else if (auto *loadNode = SVFUtil::dyn_cast<LoadVFGNode>(dst)) {
          if (id == loadNode->getPAGSrcNodeID()) {
            worklist.push(dst);
          }
        } else {
          worklist.push(dst);
        }
      }
    }
  };
  if (auto *node = SVFUtil::dyn_cast<AddrVFGNode>(vnode)) {
    /// alloca, we record itself without further processing
    if (auto *allocaInst = dyn_cast<AllocaInst>(nodeToLLVMValue(node))) {
      alloca_to_replace.insert(allocaInst);
    } else {
      errs() << "AddrVFGNode is not AllocaInst: "
             << "\n";
      nodeToLLVMValue(node)->print(errs());
      errs() << "\n";
      std::abort();
    }
  } else if (auto *node = SVFUtil::dyn_cast<GepSVFGNode>(vnode)) {
    std::cout << "gep node: " << *vnode << "\n";
  } else {
    std::cout << "unknow node: " << *vnode << "\n";
  }
}

int main(int argc, char **argv) {
  LLVMContext Context;
  SMDiagnostic Err;
  std::unique_ptr<Module> M = parseIRFile(LLVM_SVF_INPUT, Err, Context);
  if (!M) {
    Err.print(argv[0], errs());
    return 1;
  }

  SvfTainter tainter(M.release());
  tainter.collectTaintSources();

  tainter.propagateTaint();

  tainter.printResult();

  return 0;
}