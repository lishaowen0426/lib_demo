cmake_minimum_required(VERSION 3.30)

project(svf-test)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(LLVM REQUIRED CONFIG PATHS /home/swli/rust-isolation/rust/build/host/llvm/lib/cmake/llvm NO_DEFAULT_PATH)

message(STATUS "LLVM STATUS:
  Version       ${LLVM_VERSION}
  Includes      ${LLVM_INCLUDE_DIRS}
  Libraries     ${LLVM_LIBRARY_DIRS}
  Build type    ${LLVM_BUILD_TYPE}
  Definations  ${LLVM_DEFINITIONS}
  Dynamic lib   ${LLVM_LINK_LLVM_DYLIB}"
)
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})

llvm_map_components_to_libnames(llvm_libs bitwriter bitreader  core ipo irreader instcombine instrumentation target linker analysis scalaropts support  transformutils passes)

find_package(SVF REQUIRED CONFIG PATHS /home/swli/rust-isolation/rust/src/SVF/Debug-build/lib/cmake/SVF NO_DEFAULT_PATH)

include_directories(${SVF_INSTALL_INCLUDE_DIR})
link_directories(${SVF_INSTALL_LIB_DIR})

find_library(SVFCore SvfCore PATHS /home/swli/rust-isolation/rust/src/SVF/Debug-build/lib REQUIRED NO_DEFAULT_PATH)
find_library(SVFLLVM SvfLLVM PATHS /home/swli/rust-isolation/rust/src/SVF/Debug-build/lib REQUIRED NO_DEFAULT_PATH)

add_executable(Svftest main.cpp)

target_link_libraries(Svftest PRIVATE ${SVFLLVM} ${SVFCore} ${llvm_libs})