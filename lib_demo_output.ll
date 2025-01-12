; ModuleID = '/home/swli/rust-isolation/rust/src/llvm-project/lib_demo.ll'
source_filename = "4efu757uhs8yyvdi"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, %"core::option::Option<&[core::fmt::rt::Placeholder]>" }
%"core::option::Option<&[core::fmt::rt::Placeholder]>" = type { ptr, [1 x i64] }
%"core::alloc::layout::Layout" = type { i64, i64 }
%"core::ptr::non_null::NonNull<[u8]>" = type { { ptr, i64 } }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>" = type { ptr, [1 x i64] }
%"core::ptr::metadata::PtrComponents<[u8]>" = type { ptr, i64 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }

@alloc_d4d2a2a8539eafc62756407d946babb3 = private unnamed_addr constant <{ [110 x i8] }> <{ [110 x i8] c"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null" }>, align 1
@alloc_a3bf71499bef7a3e66a38a17ba71b215 = private unnamed_addr constant <{ [111 x i8] }> <{ [111 x i8] c"unsafe precondition(s) violated: ptr::write_volatile requires that the pointer argument is aligned and non-null" }>, align 1
@alloc_20b3d155afd5c58c42e598b7e6d186ef = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null" }>, align 1
@alloc_9179c96962a61baee09d260dcb816abd = private unnamed_addr constant <{ [64 x i8] }> <{ [64 x i8] c"/home/swli/rust-isolation/rust/library/core/src/ptr/const_ptr.rs" }>, align 1
@alloc_5861d9e48b4cb5480b1f66c4c53e87c8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9179c96962a61baee09d260dcb816abd, [16 x i8] c"@\00\00\00\00\00\00\00N\06\00\00\1A\00\00\00" }>, align 8
@str.0 = internal unnamed_addr constant [33 x i8] c"attempt to subtract with overflow"
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"is_aligned_to: align is not a power-of-two" }>, align 1
@alloc_041983ee8170efdaaf95ba67fd072d26 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_fad0cd83b7d1858a846a172eb260e593, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_26ebc41093fb0ba642c3454cd7052caf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9179c96962a61baee09d260dcb816abd, [16 x i8] c"@\00\00\00\00\00\00\00I\06\00\00\0D\00\00\00" }>, align 8
@alloc_c4b1ee8325c854da080be0f8139b99b7 = private unnamed_addr constant <{ [48 x i8] }> <{ [48 x i8] c"Alignment::new_unchecked requires a power of two" }>, align 1
@__rust_no_alloc_shim_is_unstable = external global i8

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr13read_volatile18precondition_check17h2734e807dc35308cE(ptr %addr, i64 %align) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %align.dbg.spill = alloca i64, align 8
  %addr.dbg.spill = alloca ptr, align 8
  store ptr %addr, ptr %addr.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !97, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !101, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !114, metadata !DIExpression()), !dbg !125
  store i64 %align, ptr %align.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !98, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !109, metadata !DIExpression()), !dbg !127
  store ptr %addr, ptr %ptr.dbg.spill, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !129, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !149, metadata !DIExpression()), !dbg !157
  %_6 = ptrtoint ptr %addr to i64, !dbg !159
  %0 = icmp eq i64 %_6, 0, !dbg !160
  br i1 %0, label %bb4, label %bb5, !dbg !160

bb4:                                              ; preds = %start
  br label %bb2, !dbg !161

bb5:                                              ; preds = %start
  %_3 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h6fbdd1cd9a11fd64E"(ptr %addr, i64 %align)
          to label %bb3 unwind label %terminate, !dbg !162

bb2:                                              ; preds = %bb3, %bb4
  call void @_ZN4core9panicking14panic_nounwind17hfa6e54027f88a877E(ptr align 1 @alloc_d4d2a2a8539eafc62756407d946babb3, i64 110) #11, !dbg !163
  unreachable, !dbg !163

terminate:                                        ; preds = %bb5
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h39af953a99c9e120E() #12, !dbg !164
  unreachable, !dbg !164

bb3:                                              ; preds = %bb5
  br i1 %_3, label %bb1, label %bb2, !dbg !111

bb1:                                              ; preds = %bb3
  call void @miri_reset_unsafe_alloc(), !dbg !165
  ret void, !dbg !165
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr14write_volatile17hc06ce39af1b25267E(ptr %dst, i64 %src) unnamed_addr #1 !dbg !166 {
start:
  %src.dbg.spill = alloca i64, align 8
  %dst.dbg.spill = alloca ptr, align 8
  store ptr %dst, ptr %dst.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.dbg.spill, metadata !171, metadata !DIExpression()), !dbg !175
  store i64 %src, ptr %src.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %src.dbg.spill, metadata !172, metadata !DIExpression()), !dbg !176
  br label %bb1, !dbg !177

bb1:                                              ; preds = %start
  call void @_ZN4core3ptr14write_volatile18precondition_check17h920ab71e54e9413fE(ptr %dst, i64 8) #13, !dbg !177
  br label %bb2, !dbg !177

bb2:                                              ; preds = %bb1
  store volatile i64 %src, ptr %dst, align 8, !dbg !178
  call void @miri_reset_unsafe_alloc(), !dbg !179
  ret void, !dbg !179
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr14write_volatile18precondition_check17h920ab71e54e9413fE(ptr %addr, i64 %align) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180 {
start:
  %ptr.dbg.spill1 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %align.dbg.spill = alloca i64, align 8
  %addr.dbg.spill = alloca ptr, align 8
  store ptr %addr, ptr %addr.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !186, metadata !DIExpression()), !dbg !188
  store i64 %align, ptr %align.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !189, metadata !DIExpression()), !dbg !194
  store ptr %addr, ptr %ptr.dbg.spill, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !193, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !199, metadata !DIExpression()), !dbg !203
  store ptr %addr, ptr %ptr.dbg.spill1, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !206, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !212, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !218, metadata !DIExpression()), !dbg !222
  %_7 = ptrtoint ptr %addr to i64, !dbg !224
  %0 = icmp eq i64 %_7, 0, !dbg !225
  br i1 %0, label %bb4, label %bb5, !dbg !225

bb4:                                              ; preds = %start
  br label %bb2, !dbg !226

bb5:                                              ; preds = %start
  %_3 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h6fbdd1cd9a11fd64E"(ptr %addr, i64 %align)
          to label %bb3 unwind label %terminate, !dbg !227

bb2:                                              ; preds = %bb3, %bb4
  call void @_ZN4core9panicking14panic_nounwind17hfa6e54027f88a877E(ptr align 1 @alloc_a3bf71499bef7a3e66a38a17ba71b215, i64 111) #11, !dbg !228
  unreachable, !dbg !228

terminate:                                        ; preds = %bb5
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h39af953a99c9e120E() #12, !dbg !229
  unreachable, !dbg !229

bb3:                                              ; preds = %bb5
  br i1 %_3, label %bb1, label %bb2, !dbg !195

bb1:                                              ; preds = %bb3
  call void @miri_reset_unsafe_alloc(), !dbg !230
  ret void, !dbg !230
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr51drop_in_place$LT$alloc..boxed..Box$LT$usize$GT$$GT$17hd96a9a1b57d088b2E"(ptr align 8 %_1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !231 {
start:
  %0 = alloca { ptr, i32, [1 x i32] }, align 8
  %_1.dbg.spill = alloca ptr, align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %_1.dbg.spill, metadata !237, metadata !DIExpression()), !dbg !240
  %_6 = load ptr, ptr %_1, align 8, !dbg !240, !noundef !99
  br label %bb3, !dbg !240

bb3:                                              ; preds = %start
  call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb33fbf3c67371d6E"(ptr align 8 %_1), !dbg !240
  call void @miri_reset_unsafe_alloc(), !dbg !240
  ret void, !dbg !240

bb4:                                              ; No predecessors!
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb33fbf3c67371d6E"(ptr align 8 %_1) #14
          to label %bb1 unwind label %terminate, !dbg !240

terminate:                                        ; preds = %bb4
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZN4core9panicking16panic_in_cleanup17h99cf92375d36dccfE() #12, !dbg !240
  unreachable, !dbg !240

bb1:                                              ; preds = %bb4
  %4 = load ptr, ptr %0, align 8, !dbg !240, !noundef !99
  %5 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !240
  %6 = load i32, ptr %5, align 8, !dbg !240, !noundef !99
  %7 = insertvalue { ptr, i32 } poison, ptr %4, 0, !dbg !240
  %8 = insertvalue { ptr, i32 } %7, i32 %6, 1, !dbg !240
  resume { ptr, i32 } %8, !dbg !240
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hed7837febff000fbE"(ptr %ptr) unnamed_addr #0 !dbg !241 {
start:
  %ptr.dbg.spill1 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !250, metadata !DIExpression()), !dbg !259
  store ptr %ptr, ptr %ptr.dbg.spill1, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !274, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !282, metadata !DIExpression()), !dbg !288
  %_4 = ptrtoint ptr %ptr to i64, !dbg !290
  %0 = icmp eq i64 %_4, 0, !dbg !291
  br i1 %0, label %bb1, label %bb2, !dbg !291

bb1:                                              ; preds = %start
  call void @_ZN4core9panicking14panic_nounwind17hfa6e54027f88a877E(ptr align 1 @alloc_20b3d155afd5c58c42e598b7e6d186ef, i64 93) #11, !dbg !292
  unreachable, !dbg !292

bb2:                                              ; preds = %start
  call void @miri_reset_unsafe_alloc(), !dbg !293
  ret void, !dbg !293
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h6fbdd1cd9a11fd64E"(ptr %self, i64 %align) unnamed_addr #1 !dbg !294 {
start:
  %pieces.dbg.spill = alloca { ptr, i64 }, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %0 = alloca i64, align 8
  %align.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_4 = alloca %"core::fmt::Arguments<'_>", align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !296, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !299, metadata !DIExpression()), !dbg !308
  store i64 %align, ptr %align.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !297, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !311, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !324, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !334, metadata !DIExpression()), !dbg !340
  %1 = call i64 @llvm.ctpop.i64(i64 %align), !dbg !332
  store i64 %1, ptr %0, align 8, !dbg !332
  %_8 = load i64, ptr %0, align 8, !dbg !332, !noundef !99
  %_7 = trunc i64 %_8 to i32, !dbg !332
  %2 = icmp eq i32 %_7, 1, !dbg !342
  br i1 %2, label %bb1, label %bb2, !dbg !342

bb1:                                              ; preds = %start
  store ptr %self, ptr %ptr.dbg.spill, align 8, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !339, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !345, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !305, metadata !DIExpression()), !dbg !353
  %_12 = ptrtoint ptr %self to i64, !dbg !355
  %_14.0 = sub i64 %align, 1, !dbg !356
  %_14.1 = icmp ult i64 %align, 1, !dbg !356
  %3 = call i1 @llvm.expect.i1(i1 %_14.1, i1 false), !dbg !356
  br i1 %3, label %panic, label %bb4, !dbg !356

bb2:                                              ; preds = %start
  store ptr @alloc_041983ee8170efdaaf95ba67fd072d26, ptr %pieces.dbg.spill, align 8, !dbg !357
  %4 = getelementptr inbounds i8, ptr %pieces.dbg.spill, i64 8, !dbg !357
  store i64 1, ptr %4, align 8, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %pieces.dbg.spill, metadata !358, metadata !DIExpression()), !dbg !486
  store ptr @alloc_041983ee8170efdaaf95ba67fd072d26, ptr %_4, align 8, !dbg !490
  %5 = getelementptr inbounds i8, ptr %_4, i64 8, !dbg !490
  store i64 1, ptr %5, align 8, !dbg !490
  %6 = load ptr, ptr @0, align 8, !dbg !490, !align !491, !noundef !99
  %7 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8, !dbg !490
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4, i32 0, i32 2, !dbg !490
  store ptr %6, ptr %8, align 8, !dbg !490
  %9 = getelementptr inbounds i8, ptr %8, i64 8, !dbg !490
  store i64 %7, ptr %9, align 8, !dbg !490
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4, i32 0, i32 1, !dbg !490
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %10, align 8, !dbg !490
  %11 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !490
  store i64 0, ptr %11, align 8, !dbg !490
  call void @_ZN4core9panicking9panic_fmt17h62b2376730a8edd9E(ptr align 8 %_4, ptr align 8 @alloc_26ebc41093fb0ba642c3454cd7052caf) #15, !dbg !492
  unreachable, !dbg !492

bb4:                                              ; preds = %bb1
  %_11 = and i64 %_12, %_14.0, !dbg !493
  %_0 = icmp eq i64 %_11, 0, !dbg !493
  call void @miri_reset_unsafe_alloc(), !dbg !494
  ret i1 %_0, !dbg !494

panic:                                            ; preds = %bb1
  call void @_ZN4core9panicking5panic17h06f28fab97f71562E(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_5861d9e48b4cb5480b1f66c4c53e87c8) #15, !dbg !356
  unreachable, !dbg !356
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout13for_value_raw17h46f1a9d431315325E(ptr %t) unnamed_addr #2 !dbg !495 {
start:
  %0 = alloca i64, align 8
  %align.dbg.spill = alloca i64, align 8
  %1 = alloca i64, align 8
  %size.dbg.spill = alloca i64, align 8
  %2 = alloca i64, align 8
  %t.dbg.spill = alloca ptr, align 8
  %_0 = alloca %"core::alloc::layout::Layout", align 8
  store ptr %t, ptr %t.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %t.dbg.spill, metadata !511, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata ptr %t.dbg.spill, metadata !516, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata ptr %t.dbg.spill, metadata !526, metadata !DIExpression()), !dbg !530
  store i64 8, ptr %2, align 8, !dbg !532
  %size = load i64, ptr %2, align 8, !dbg !532, !noundef !99
  store i64 %size, ptr %size.dbg.spill, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !512, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !534, metadata !DIExpression()), !dbg !542
  store i64 8, ptr %1, align 8, !dbg !544
  %align = load i64, ptr %1, align 8, !dbg !544, !noundef !99
  store i64 %align, ptr %align.dbg.spill, align 8, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !514, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !541, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !547, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !557, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !564, metadata !DIExpression()), !dbg !569
  br label %bb3, !dbg !571

bb3:                                              ; preds = %start
  %3 = call i64 @llvm.ctpop.i64(i64 %align), !dbg !569
  store i64 %3, ptr %0, align 8, !dbg !569
  %_8 = load i64, ptr %0, align 8, !dbg !569, !noundef !99
  %_7 = trunc i64 %_8 to i32, !dbg !569
  %4 = icmp eq i32 %_7, 1, !dbg !572
  br i1 %4, label %bb4, label %bb5, !dbg !572

bb4:                                              ; preds = %bb3
  br label %bb6, !dbg !571

bb5:                                              ; preds = %bb3
  call void @_ZN4core9panicking14panic_nounwind17hfa6e54027f88a877E(ptr align 1 @alloc_c4b1ee8325c854da080be0f8139b99b7, i64 48) #11, !dbg !571
  unreachable, !dbg !571

bb6:                                              ; preds = %bb4
  %5 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !573
  store i64 %size, ptr %5, align 8, !dbg !573
  store i64 %align, ptr %_0, align 8, !dbg !573
  %6 = load i64, ptr %_0, align 8, !dbg !574, !range !575, !noundef !99
  %7 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !574
  %8 = load i64, ptr %7, align 8, !dbg !574, !noundef !99
  %9 = insertvalue { i64, i64 } poison, i64 %6, 0, !dbg !574
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1, !dbg !574
  call void @miri_reset_unsafe_alloc(), !dbg !574
  ret { i64, i64 } %10, !dbg !574
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @_ZN5alloc5alloc15exchange_malloc17h6cc58ed5800e9023E(i64 %size, i64 %align) unnamed_addr #1 !dbg !576 {
start:
  %ptr.dbg.spill = alloca %"core::ptr::non_null::NonNull<[u8]>", align 8
  %0 = alloca i64, align 8
  %align.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i64, align 8
  %self = alloca ptr, align 8
  %_4 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %self.dbg.spill, align 8, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !622, metadata !DIExpression()), !dbg !596
  store i64 %size, ptr %size.dbg.spill, align 8, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !583, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !626, metadata !DIExpression()), !dbg !631
  store i64 %align, ptr %align.dbg.spill, align 8, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !584, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !630, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !635, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !641, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !648, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !585, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !623, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.declare(metadata ptr %self, metadata !657, metadata !DIExpression()), !dbg !667
  br label %bb3, !dbg !677

bb3:                                              ; preds = %start
  %1 = call i64 @llvm.ctpop.i64(i64 %align), !dbg !653
  store i64 %1, ptr %0, align 8, !dbg !653
  %_12 = load i64, ptr %0, align 8, !dbg !653, !noundef !99
  %_11 = trunc i64 %_12 to i32, !dbg !653
  %2 = icmp eq i32 %_11, 1, !dbg !678
  br i1 %2, label %bb4, label %bb5, !dbg !678

bb4:                                              ; preds = %bb3
  br label %bb6, !dbg !677

bb5:                                              ; preds = %bb3
  call void @_ZN4core9panicking14panic_nounwind17hfa6e54027f88a877E(ptr align 1 @alloc_c4b1ee8325c854da080be0f8139b99b7, i64 48) #11, !dbg !677
  unreachable, !dbg !677

bb6:                                              ; preds = %bb4
  %3 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !679
  store i64 %size, ptr %3, align 8, !dbg !679
  store i64 %align, ptr %layout, align 8, !dbg !679
  %4 = load i64, ptr %layout, align 8, !dbg !680, !range !575, !noundef !99
  %5 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !680
  %6 = load i64, ptr %5, align 8, !dbg !680, !noundef !99
  %7 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h67f63f2943dd1d74E(ptr align 1 @alloc_513570631223a12912d85da2bec3b15a, i64 %4, i64 %6, i1 zeroext false), !dbg !680
  %8 = extractvalue { ptr, i64 } %7, 0, !dbg !680
  %9 = extractvalue { ptr, i64 } %7, 1, !dbg !680
  store ptr %8, ptr %_4, align 8, !dbg !680
  %10 = getelementptr inbounds i8, ptr %_4, i64 8, !dbg !680
  store i64 %9, ptr %10, align 8, !dbg !680
  %11 = load ptr, ptr %_4, align 8, !dbg !681, !noundef !99
  %12 = ptrtoint ptr %11 to i64, !dbg !681
  %13 = icmp eq i64 %12, 0, !dbg !681
  %_5 = select i1 %13, i64 1, i64 0, !dbg !681
  %14 = icmp eq i64 %_5, 0, !dbg !682
  br i1 %14, label %bb2, label %bb1, !dbg !682

bb2:                                              ; preds = %bb6
  %ptr.0 = load ptr, ptr %_4, align 8, !dbg !683, !nonnull !99, !noundef !99
  %15 = getelementptr inbounds i8, ptr %_4, i64 8, !dbg !683
  %ptr.1 = load i64, ptr %15, align 8, !dbg !683, !noundef !99
  store ptr %ptr.0, ptr %ptr.dbg.spill, align 8, !dbg !683
  %16 = getelementptr inbounds i8, ptr %ptr.dbg.spill, i64 8, !dbg !683
  store i64 %ptr.1, ptr %16, align 8, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !587, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !675, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !686, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !695, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !704, metadata !DIExpression()), !dbg !715
  store ptr %ptr.0, ptr %self, align 8, !dbg !717
  call void @miri_reset_unsafe_alloc(), !dbg !718
  ret ptr %ptr.0, !dbg !718

bb1:                                              ; preds = %bb6
  %17 = load i64, ptr %layout, align 8, !dbg !719, !range !575, !noundef !99
  %18 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !719
  %19 = load i64, ptr %18, align 8, !dbg !719, !noundef !99
  call void @_ZN5alloc5alloc18handle_alloc_error17hd2bdf08e0f0784f0E(i64 %17, i64 %19) #15, !dbg !719
  unreachable, !dbg !719

bb9:                                              ; No predecessors!
  unreachable, !dbg !682
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @_ZN5alloc5alloc5alloc17heba3b7912793fb2aE(i64 %0, i64 %1) unnamed_addr #1 !dbg !720 {
start:
  %self.dbg.spill2 = alloca i64, align 8
  %self.dbg.spill1 = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %2 = alloca i8, align 1
  %_13 = alloca i64, align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  %src.dbg.spill = alloca ptr, align 8
  store ptr @__rust_no_alloc_shim_is_unstable, ptr %src.dbg.spill, align 8, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %src.dbg.spill, metadata !731, metadata !DIExpression()), !dbg !725
  store i64 %0, ptr %layout, align 8, !dbg !725
  %3 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !725
  store i64 %1, ptr %3, align 8, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !724, metadata !DIExpression()), !dbg !733
  br label %bb3, !dbg !734

bb3:                                              ; preds = %start
  call void @_ZN4core3ptr13read_volatile18precondition_check17h2734e807dc35308cE(ptr @__rust_no_alloc_shim_is_unstable, i64 1) #13, !dbg !734
  br label %bb4, !dbg !734

bb4:                                              ; preds = %bb3
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !dbg !735
  store i8 %4, ptr %2, align 1, !dbg !735
  %_2 = load i8, ptr %2, align 1, !dbg !735, !noundef !99
  store ptr %layout, ptr %self.dbg.spill, align 8, !dbg !736
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !737, metadata !DIExpression()), !dbg !745
  %5 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !747
  %_5 = load i64, ptr %5, align 8, !dbg !747, !noundef !99
  store ptr %layout, ptr %self.dbg.spill1, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill1, metadata !749, metadata !DIExpression()), !dbg !754
  %self = load i64, ptr %layout, align 8, !dbg !756, !range !575, !noundef !99
  store i64 %self, ptr %self.dbg.spill2, align 8, !dbg !756
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill2, metadata !757, metadata !DIExpression()), !dbg !764
  store i64 %self, ptr %_13, align 8, !dbg !766
  %_14 = load i64, ptr %_13, align 8, !dbg !766, !range !575, !noundef !99
  %_15 = icmp uge i64 %_14, 1, !dbg !766
  %_16 = icmp ule i64 %_14, -9223372036854775808, !dbg !766
  %_17 = and i1 %_15, %_16, !dbg !766
  %_0 = call ptr @__rust_alloc(i64 %_5, i64 %_14) #13, !dbg !767
  call void @miri_reset_unsafe_alloc(), !dbg !768
  ret ptr %_0, !dbg !768
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h67f63f2943dd1d74E(ptr align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #1 !dbg !769 {
start:
  %ptr.dbg.spill23 = alloca { ptr, i64 }, align 8
  %data_pointer.dbg.spill = alloca ptr, align 8
  %data.dbg.spill = alloca ptr, align 8
  %ptr.dbg.spill22 = alloca ptr, align 8
  %v.dbg.spill20 = alloca ptr, align 8
  %v.dbg.spill = alloca ptr, align 8
  %ptr.dbg.spill18 = alloca ptr, align 8
  %self.dbg.spill16 = alloca i64, align 8
  %self.dbg.spill14 = alloca ptr, align 8
  %self.dbg.spill13 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %addr.dbg.spill = alloca i64, align 8
  %self.dbg.spill11 = alloca i64, align 8
  %self.dbg.spill9 = alloca ptr, align 8
  %size.dbg.spill = alloca i64, align 8
  %self.dbg.spill8 = alloca ptr, align 8
  %zeroed.dbg.spill = alloca i8, align 1
  %self.dbg.spill = alloca ptr, align 8
  %_62 = alloca %"core::ptr::metadata::PtrComponents<[u8]>", align 8
  %_61 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_49 = alloca ptr, align 8
  %_44 = alloca i64, align 8
  %_35 = alloca ptr, align 8
  %_34 = alloca %"core::ptr::metadata::PtrComponents<[u8]>", align 8
  %_33 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %data_pointer = alloca ptr, align 8
  %data7 = alloca ptr, align 8
  %ptr = alloca { ptr, i64 }, align 8
  %_29 = alloca ptr, align 8
  %_21 = alloca i64, align 8
  %_17 = alloca %"core::ptr::non_null::NonNull<[u8]>", align 8
  %self6 = alloca ptr, align 8
  %self5 = alloca ptr, align 8
  %_12 = alloca ptr, align 8
  %layout4 = alloca %"core::alloc::layout::Layout", align 8
  %raw_ptr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %_6 = alloca %"core::ptr::non_null::NonNull<[u8]>", align 8
  %_0 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  %t.dbg.spill = alloca %"core::alloc::AllocError", align 1
  %e.dbg.spill3 = alloca %"core::alloc::AllocError", align 1
  %residual.dbg.spill2 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %e.dbg.spill = alloca %"core::alloc::AllocError", align 1
  %err.dbg.spill = alloca %"core::alloc::AllocError", align 1
  %metadata.dbg.spill = alloca i64, align 8
  %len.dbg.spill1 = alloca i64, align 8
  %len.dbg.spill = alloca i64, align 8
  %residual.dbg.spill = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  call void @llvm.dbg.declare(metadata ptr %residual.dbg.spill, metadata !783, metadata !DIExpression()), !dbg !805
  store i64 0, ptr %len.dbg.spill, align 8, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %len.dbg.spill, metadata !814, metadata !DIExpression()), !dbg !806
  store i64 0, ptr %len.dbg.spill1, align 8, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %len.dbg.spill1, metadata !826, metadata !DIExpression()), !dbg !819
  store i64 0, ptr %metadata.dbg.spill, align 8, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %metadata.dbg.spill, metadata !840, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata ptr %err.dbg.spill, metadata !845, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata ptr %e.dbg.spill, metadata !885, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata ptr %residual.dbg.spill2, metadata !917, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata ptr %e.dbg.spill3, metadata !932, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata ptr %t.dbg.spill, metadata !939, metadata !DIExpression()), !dbg !949
  store i64 %0, ptr %layout, align 8, !dbg !949
  %2 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !949
  store i64 %1, ptr %2, align 8, !dbg !949
  store ptr %self, ptr %self.dbg.spill, align 8, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !774, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !775, metadata !DIExpression()), !dbg !952
  %3 = zext i1 %zeroed to i8, !dbg !949
  store i8 %3, ptr %zeroed.dbg.spill, align 1, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %zeroed.dbg.spill, metadata !776, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.declare(metadata ptr %data, metadata !813, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.declare(metadata ptr %data, metadata !955, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata ptr %raw_ptr, metadata !779, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata ptr %layout4, metadata !964, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.declare(metadata ptr %self5, metadata !912, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.declare(metadata ptr %self6, metadata !880, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !972, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata ptr %data7, metadata !825, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.declare(metadata ptr %data7, metadata !984, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.declare(metadata ptr %data_pointer, metadata !839, metadata !DIExpression()), !dbg !994
  store ptr %layout, ptr %self.dbg.spill8, align 8, !dbg !995
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill8, metadata !996, metadata !DIExpression()), !dbg !1002
  %4 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1004
  %size = load i64, ptr %4, align 8, !dbg !1004, !noundef !99
  store i64 %size, ptr %size.dbg.spill, align 8, !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !777, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !817, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !829, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !843, metadata !DIExpression()), !dbg !1010
  %5 = icmp eq i64 %size, 0, !dbg !1012
  br i1 %5, label %bb2, label %bb1, !dbg !1012

bb2:                                              ; preds = %start
  store ptr %layout, ptr %self.dbg.spill9, align 8, !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill9, metadata !1014, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill9, metadata !1023, metadata !DIExpression()), !dbg !1029
  %self10 = load i64, ptr %layout, align 8, !dbg !1031, !range !575, !noundef !99
  store i64 %self10, ptr %self.dbg.spill11, align 8, !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill11, metadata !1032, metadata !DIExpression()), !dbg !1038
  store i64 %self10, ptr %_21, align 8, !dbg !1040
  %_22 = load i64, ptr %_21, align 8, !dbg !1040, !range !575, !noundef !99
  %_23 = icmp uge i64 %_22, 1, !dbg !1040
  %_24 = icmp ule i64 %_22, -9223372036854775808, !dbg !1040
  %_25 = and i1 %_23, %_24, !dbg !1040
  store i64 %_22, ptr %addr.dbg.spill, align 8, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !1041, metadata !DIExpression()), !dbg !1047
  %ptr12 = inttoptr i64 %_22 to ptr, !dbg !1049
  store ptr %ptr12, ptr %ptr.dbg.spill, align 8, !dbg !1049
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1050, metadata !DIExpression()), !dbg !1059
  br label %bb8, !dbg !1061

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4, !dbg !1062

bb8:                                              ; preds = %bb2
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hed7837febff000fbE"(ptr %ptr12) #13, !dbg !1061
  store ptr %ptr12, ptr %_29, align 8, !dbg !1063
  %6 = load ptr, ptr %_29, align 8, !dbg !1064, !noundef !99
  store ptr %6, ptr %data, align 8, !dbg !1064
  store ptr %ptr12, ptr %data7, align 8, !dbg !1065
  store ptr %ptr12, ptr %data_pointer, align 8, !dbg !1066
  store ptr %ptr12, ptr %_35, align 8, !dbg !1067
  %7 = load ptr, ptr %_35, align 8, !dbg !1068, !noundef !99
  store ptr %7, ptr %_34, align 8, !dbg !1068
  %8 = getelementptr inbounds i8, ptr %_34, i64 8, !dbg !1068
  store i64 0, ptr %8, align 8, !dbg !1068
  %9 = load ptr, ptr %_34, align 8, !dbg !1069, !noundef !99
  %10 = getelementptr inbounds i8, ptr %_34, i64 8, !dbg !1069
  %11 = load i64, ptr %10, align 8, !dbg !1069, !noundef !99
  store ptr %9, ptr %_33, align 8, !dbg !1069
  %12 = getelementptr inbounds i8, ptr %_33, i64 8, !dbg !1069
  store i64 %11, ptr %12, align 8, !dbg !1069
  %13 = load ptr, ptr %_33, align 8, !dbg !1069, !noundef !99
  %14 = getelementptr inbounds i8, ptr %_33, i64 8, !dbg !1069
  %15 = load i64, ptr %14, align 8, !dbg !1069, !noundef !99
  store ptr %13, ptr %ptr, align 8, !dbg !1069
  %16 = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !1069
  store i64 %15, ptr %16, align 8, !dbg !1069
  br label %bb10, !dbg !1070

bb9:                                              ; No predecessors!
  store ptr %ptr12, ptr %_29, align 8, !dbg !1063
  %17 = load ptr, ptr %_29, align 8, !dbg !1064, !noundef !99
  store ptr %17, ptr %data, align 8, !dbg !1064
  store ptr %ptr12, ptr %data7, align 8, !dbg !1065
  store ptr %ptr12, ptr %data_pointer, align 8, !dbg !1066
  store ptr %ptr12, ptr %_35, align 8, !dbg !1067
  %18 = load ptr, ptr %_35, align 8, !dbg !1068, !noundef !99
  store ptr %18, ptr %_34, align 8, !dbg !1068
  %19 = getelementptr inbounds i8, ptr %_34, i64 8, !dbg !1068
  store i64 0, ptr %19, align 8, !dbg !1068
  %20 = load ptr, ptr %_34, align 8, !dbg !1069, !noundef !99
  %21 = getelementptr inbounds i8, ptr %_34, i64 8, !dbg !1069
  %22 = load i64, ptr %21, align 8, !dbg !1069, !noundef !99
  store ptr %20, ptr %_33, align 8, !dbg !1069
  %23 = getelementptr inbounds i8, ptr %_33, i64 8, !dbg !1069
  store i64 %22, ptr %23, align 8, !dbg !1069
  %24 = load ptr, ptr %_33, align 8, !dbg !1069, !noundef !99
  %25 = getelementptr inbounds i8, ptr %_33, i64 8, !dbg !1069
  %26 = load i64, ptr %25, align 8, !dbg !1069, !noundef !99
  store ptr %24, ptr %ptr, align 8, !dbg !1069
  %27 = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !1069
  store i64 %26, ptr %27, align 8, !dbg !1069
  br label %bb10, !dbg !1070

bb10:                                             ; preds = %bb9, %bb8
  %_37 = load ptr, ptr %ptr, align 8, !dbg !1071, !noundef !99
  %28 = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !1071
  %29 = load i64, ptr %28, align 8, !dbg !1071, !noundef !99
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hed7837febff000fbE"(ptr %_37) #13, !dbg !1070
  br label %bb11, !dbg !1070

bb11:                                             ; preds = %bb10
  %_38.0 = load ptr, ptr %ptr, align 8, !dbg !1072, !noundef !99
  %30 = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !1072
  %_38.1 = load i64, ptr %30, align 8, !dbg !1072, !noundef !99
  store ptr %_38.0, ptr %_6, align 8, !dbg !1073
  %31 = getelementptr inbounds i8, ptr %_6, i64 8, !dbg !1073
  store i64 %_38.1, ptr %31, align 8, !dbg !1073
  %32 = load ptr, ptr %_6, align 8, !dbg !1074, !nonnull !99, !noundef !99
  %33 = getelementptr inbounds i8, ptr %_6, i64 8, !dbg !1074
  %34 = load i64, ptr %33, align 8, !dbg !1074, !noundef !99
  store ptr %32, ptr %_0, align 8, !dbg !1074
  %35 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !1074
  store i64 %34, ptr %35, align 8, !dbg !1074
  br label %bb7, !dbg !1075

bb7:                                              ; preds = %bb18, %bb13, %bb11
  %36 = load ptr, ptr %_0, align 8, !dbg !1076, !noundef !99
  %37 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !1076
  %38 = load i64, ptr %37, align 8, !dbg !1076
  %39 = insertvalue { ptr, i64 } poison, ptr %36, 0, !dbg !1076
  %40 = insertvalue { ptr, i64 } %39, i64 %38, 1, !dbg !1076
  call void @miri_reset_unsafe_alloc(), !dbg !1076
  ret { ptr, i64 } %40, !dbg !1076

bb4:                                              ; preds = %bb1
  %_11.0 = load i64, ptr %layout, align 8, !dbg !1077, !range !575, !noundef !99
  %41 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1077
  %_11.1 = load i64, ptr %41, align 8, !dbg !1077, !noundef !99
  %42 = call ptr @_ZN5alloc5alloc5alloc17heba3b7912793fb2aE(i64 %_11.0, i64 %_11.1), !dbg !1078
  store ptr %42, ptr %raw_ptr, align 8, !dbg !1078
  br label %bb6, !dbg !1079

bb3:                                              ; preds = %bb1
  %43 = load i64, ptr %layout, align 8, !dbg !1080, !range !575, !noundef !99
  %44 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1080
  %45 = load i64, ptr %44, align 8, !dbg !1080, !noundef !99
  store i64 %43, ptr %layout4, align 8, !dbg !1080
  %46 = getelementptr inbounds i8, ptr %layout4, i64 8, !dbg !1080
  store i64 %45, ptr %46, align 8, !dbg !1080
  store ptr %layout4, ptr %self.dbg.spill13, align 8, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill13, metadata !1000, metadata !DIExpression()), !dbg !1082
  %47 = getelementptr inbounds i8, ptr %layout4, i64 8, !dbg !1084
  %_39 = load i64, ptr %47, align 8, !dbg !1084, !noundef !99
  store ptr %layout4, ptr %self.dbg.spill14, align 8, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill14, metadata !1027, metadata !DIExpression()), !dbg !1086
  %self15 = load i64, ptr %layout4, align 8, !dbg !1088, !range !575, !noundef !99
  store i64 %self15, ptr %self.dbg.spill16, align 8, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill16, metadata !1036, metadata !DIExpression()), !dbg !1089
  store i64 %self15, ptr %_44, align 8, !dbg !1091
  %_45 = load i64, ptr %_44, align 8, !dbg !1091, !range !575, !noundef !99
  %_46 = icmp uge i64 %_45, 1, !dbg !1091
  %_47 = icmp ule i64 %_45, -9223372036854775808, !dbg !1091
  %_48 = and i1 %_46, %_47, !dbg !1091
  %48 = call ptr @__rust_alloc_zeroed(i64 %_39, i64 %_45) #13, !dbg !1092
  store ptr %48, ptr %raw_ptr, align 8, !dbg !1092
  br label %bb6, !dbg !1079

bb6:                                              ; preds = %bb3, %bb4
  %ptr17 = load ptr, ptr %raw_ptr, align 8, !dbg !1093, !noundef !99
  store ptr %ptr17, ptr %ptr.dbg.spill18, align 8, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1094, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1102, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1108, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1114, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !988, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1057, metadata !DIExpression()), !dbg !1122
  %_50 = ptrtoint ptr %ptr17 to i64, !dbg !1124
  %49 = icmp eq i64 %_50, 0, !dbg !1125
  br i1 %49, label %bb13, label %bb14, !dbg !1125

bb13:                                             ; preds = %bb6
  store ptr null, ptr %self6, align 8, !dbg !1126
  store ptr null, ptr %self5, align 8, !dbg !1127
  %50 = load ptr, ptr @0, align 8, !dbg !1128, !noundef !99
  %51 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8, !dbg !1128
  store ptr %50, ptr %_0, align 8, !dbg !1128
  %52 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !1128
  store i64 %51, ptr %52, align 8, !dbg !1128
  br label %bb7, !dbg !1076

bb14:                                             ; preds = %bb6
  br label %bb15, !dbg !1129

bb15:                                             ; preds = %bb14
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hed7837febff000fbE"(ptr %ptr17) #13, !dbg !1129
  br label %bb16, !dbg !1129

bb16:                                             ; preds = %bb15
  store ptr %ptr17, ptr %_49, align 8, !dbg !1130
  %53 = load ptr, ptr %_49, align 8, !dbg !1131, !nonnull !99, !noundef !99
  store ptr %53, ptr %self6, align 8, !dbg !1131
  %v = load ptr, ptr %self6, align 8, !dbg !1132, !nonnull !99, !noundef !99
  store ptr %v, ptr %v.dbg.spill, align 8, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %v.dbg.spill, metadata !881, metadata !DIExpression()), !dbg !1133
  store ptr %v, ptr %self5, align 8, !dbg !1134
  %v19 = load ptr, ptr %self5, align 8, !dbg !1135, !nonnull !99, !noundef !99
  store ptr %v19, ptr %v.dbg.spill20, align 8, !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %v.dbg.spill20, metadata !913, metadata !DIExpression()), !dbg !1136
  store ptr %v19, ptr %_12, align 8, !dbg !1137
  %ptr21 = load ptr, ptr %_12, align 8, !dbg !916, !nonnull !99, !noundef !99
  store ptr %ptr21, ptr %ptr.dbg.spill22, align 8, !dbg !916
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill22, metadata !781, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill22, metadata !803, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill22, metadata !815, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill22, metadata !959, metadata !DIExpression()), !dbg !1141
  store ptr %ptr21, ptr %data.dbg.spill, align 8, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %data.dbg.spill, metadata !827, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %data.dbg.spill, metadata !990, metadata !DIExpression()), !dbg !1145
  store ptr %ptr21, ptr %data_pointer.dbg.spill, align 8, !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %data_pointer.dbg.spill, metadata !841, metadata !DIExpression()), !dbg !1148
  store ptr %ptr21, ptr %_62, align 8, !dbg !1149
  %54 = getelementptr inbounds i8, ptr %_62, i64 8, !dbg !1149
  store i64 %size, ptr %54, align 8, !dbg !1149
  %55 = load ptr, ptr %_62, align 8, !dbg !1150, !noundef !99
  %56 = getelementptr inbounds i8, ptr %_62, i64 8, !dbg !1150
  %57 = load i64, ptr %56, align 8, !dbg !1150, !noundef !99
  store ptr %55, ptr %_61, align 8, !dbg !1150
  %58 = getelementptr inbounds i8, ptr %_61, i64 8, !dbg !1150
  store i64 %57, ptr %58, align 8, !dbg !1150
  %ptr.0 = load ptr, ptr %_61, align 8, !dbg !1150, !noundef !99
  %59 = getelementptr inbounds i8, ptr %_61, i64 8, !dbg !1150
  %ptr.1 = load i64, ptr %59, align 8, !dbg !1150, !noundef !99
  store ptr %ptr.0, ptr %ptr.dbg.spill23, align 8, !dbg !1150
  %60 = getelementptr inbounds i8, ptr %ptr.dbg.spill23, i64 8, !dbg !1150
  store i64 %ptr.1, ptr %60, align 8, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill23, metadata !979, metadata !DIExpression()), !dbg !1151
  br label %bb17, !dbg !1153

bb17:                                             ; preds = %bb16
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hed7837febff000fbE"(ptr %ptr.0) #13, !dbg !1153
  br label %bb18, !dbg !1153

bb18:                                             ; preds = %bb17
  store ptr %ptr.0, ptr %_17, align 8, !dbg !1154
  %61 = getelementptr inbounds i8, ptr %_17, i64 8, !dbg !1154
  store i64 %ptr.1, ptr %61, align 8, !dbg !1154
  %62 = load ptr, ptr %_17, align 8, !dbg !1155, !nonnull !99, !noundef !99
  %63 = getelementptr inbounds i8, ptr %_17, i64 8, !dbg !1155
  %64 = load i64, ptr %63, align 8, !dbg !1155, !noundef !99
  store ptr %62, ptr %_0, align 8, !dbg !1155
  %65 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !1155
  store i64 %64, ptr %65, align 8, !dbg !1155
  br label %bb7, !dbg !1156
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$10into_inner17h0a0273a7c9721602E"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1157 {
start:
  %1 = alloca { ptr, i32, [1 x i32] }, align 8
  %boxed = alloca ptr, align 8
  store ptr %0, ptr %boxed, align 8
  call void @llvm.dbg.declare(metadata ptr %boxed, metadata !1164, metadata !DIExpression()), !dbg !1167
  %_4 = load ptr, ptr %boxed, align 8, !dbg !1168, !noundef !99
  %_0 = load i64, ptr %_4, align 8, !dbg !1168, !noundef !99
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb33fbf3c67371d6E"(ptr align 8 %boxed)
          to label %bb4 unwind label %cleanup, !dbg !1169

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !dbg !1170, !noundef !99
  %3 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1170
  %4 = load i32, ptr %3, align 8, !dbg !1170, !noundef !99
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0, !dbg !1170
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1, !dbg !1170
  resume { ptr, i32 } %6, !dbg !1170

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb3

bb4:                                              ; preds = %start
  call void @miri_reset_unsafe_alloc(), !dbg !1171
  ret i64 %_0, !dbg !1171
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0f4e9136f1421813E"(ptr align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #1 !dbg !1172 {
start:
  %self.dbg.spill7 = alloca i64, align 8
  %self.dbg.spill5 = alloca ptr, align 8
  %self.dbg.spill4 = alloca ptr, align 8
  %ptr.dbg.spill3 = alloca ptr, align 8
  %self.dbg.spill2 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_14 = alloca i64, align 8
  %layout1 = alloca %"core::alloc::layout::Layout", align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !1176, metadata !DIExpression()), !dbg !1179
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1177, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1181, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !1178, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %layout1, metadata !1188, metadata !DIExpression()), !dbg !1195
  store ptr %layout, ptr %self.dbg.spill2, align 8, !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill2, metadata !1198, metadata !DIExpression()), !dbg !1204
  %3 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1206
  %_4 = load i64, ptr %3, align 8, !dbg !1206, !noundef !99
  %4 = icmp eq i64 %_4, 0, !dbg !1197
  br i1 %4, label %bb2, label %bb1, !dbg !1197

bb2:                                              ; preds = %start
  br label %bb3, !dbg !1207

bb1:                                              ; preds = %start
  store ptr %ptr, ptr %ptr.dbg.spill3, align 8, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill3, metadata !1194, metadata !DIExpression()), !dbg !1209
  %5 = load i64, ptr %layout, align 8, !dbg !1210, !range !575, !noundef !99
  %6 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1210
  %7 = load i64, ptr %6, align 8, !dbg !1210, !noundef !99
  store i64 %5, ptr %layout1, align 8, !dbg !1210
  %8 = getelementptr inbounds i8, ptr %layout1, i64 8, !dbg !1210
  store i64 %7, ptr %8, align 8, !dbg !1210
  store ptr %layout1, ptr %self.dbg.spill4, align 8, !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill4, metadata !1202, metadata !DIExpression()), !dbg !1212
  %9 = getelementptr inbounds i8, ptr %layout1, i64 8, !dbg !1214
  %_9 = load i64, ptr %9, align 8, !dbg !1214, !noundef !99
  store ptr %layout1, ptr %self.dbg.spill5, align 8, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill5, metadata !1216, metadata !DIExpression()), !dbg !1220
  %self6 = load i64, ptr %layout1, align 8, !dbg !1222, !range !575, !noundef !99
  store i64 %self6, ptr %self.dbg.spill7, align 8, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill7, metadata !1223, metadata !DIExpression()), !dbg !1227
  store i64 %self6, ptr %_14, align 8, !dbg !1229
  %_15 = load i64, ptr %_14, align 8, !dbg !1229, !range !575, !noundef !99
  %_16 = icmp uge i64 %_15, 1, !dbg !1229
  %_17 = icmp ule i64 %_15, -9223372036854775808, !dbg !1229
  %_18 = and i1 %_16, %_17, !dbg !1229
  call void @__rust_dealloc(ptr %ptr, i64 %_9, i64 %_15) #13, !dbg !1230
  br label %bb3, !dbg !1207

bb3:                                              ; preds = %bb1, %bb2
  call void @miri_reset_unsafe_alloc(), !dbg !1231
  ret void, !dbg !1231
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb33fbf3c67371d6E"(ptr align 8 %self) unnamed_addr #1 !dbg !1232 {
start:
  %self.dbg.spill1 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %unique = alloca ptr, align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !1238, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !1251, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.declare(metadata ptr %unique, metadata !1255, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %unique, metadata !1269, metadata !DIExpression()), !dbg !1275
  %ptr = load ptr, ptr %self, align 8, !dbg !1277, !nonnull !99, !noundef !99
  store ptr %ptr, ptr %ptr.dbg.spill, align 8, !dbg !1277
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1239, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1279, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1288, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1299, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1309, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1295, metadata !DIExpression()), !dbg !1318
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout13for_value_raw17h46f1a9d431315325E(ptr %ptr), !dbg !1320
  %1 = extractvalue { i64, i64 } %0, 0, !dbg !1320
  %2 = extractvalue { i64, i64 } %0, 1, !dbg !1320
  store i64 %1, ptr %layout, align 8, !dbg !1320
  %3 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1320
  store i64 %2, ptr %3, align 8, !dbg !1320
  store ptr %layout, ptr %self.dbg.spill1, align 8, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill1, metadata !1322, metadata !DIExpression()), !dbg !1326
  %4 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1328
  %_3 = load i64, ptr %4, align 8, !dbg !1328, !noundef !99
  %5 = icmp eq i64 %_3, 0, !dbg !1321
  br i1 %5, label %bb4, label %bb2, !dbg !1321

bb4:                                              ; preds = %start
  br label %bb5, !dbg !1329

bb2:                                              ; preds = %start
  %_6 = getelementptr i8, ptr %self, i64 8, !dbg !1330
  store ptr %ptr, ptr %unique, align 8, !dbg !1331
  %_7.0 = load i64, ptr %layout, align 8, !dbg !1332, !range !575, !noundef !99
  %6 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1332
  %_7.1 = load i64, ptr %6, align 8, !dbg !1332, !noundef !99
  %7 = load ptr, ptr %unique, align 8, !dbg !1330, !nonnull !99, !noundef !99
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0f4e9136f1421813E"(ptr align 1 %_6, ptr %7, i64 %_7.0, i64 %_7.1), !dbg !1330
  br label %bb5, !dbg !1329

bb5:                                              ; preds = %bb2, %bb4
  call void @miri_reset_unsafe_alloc(), !dbg !1333
  ret void, !dbg !1333
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @"_ZN80_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$T$GT$$GT$6as_mut17hc7acadc6d82d92bdE"(ptr align 8 %self) unnamed_addr #2 !dbg !1334 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !1340, metadata !DIExpression()), !dbg !1341
  %_2 = load ptr, ptr %self, align 8, !dbg !1342, !nonnull !99, !align !491, !noundef !99
  call void @miri_reset_unsafe_alloc(), !dbg !1343
  ret ptr %_2, !dbg !1343
}

; Function Attrs: nonlazybind uwtable
define i64 @_ZN8lib_demo3foo17h513ff704e90c1191E() unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1344 {
start:
  %0 = alloca { ptr, i32, [1 x i32] }, align 8
  %x.dbg.spill.i = alloca i64, align 8
  %1 = alloca { ptr, i32, [1 x i32] }, align 8
  %_7 = alloca i8, align 1
  %2 = call ptr @miri_unsafe_alloc(i64 8, i64 8)
  %3 = call ptr @miri_unsafe_alloc(i64 8, i64 8)
  %4 = call ptr @miri_unsafe_alloc(i64 0, i64 1)
  %5 = call ptr @miri_unsafe_alloc(i64 8, i64 8)
  %6 = call ptr @miri_unsafe_alloc(i64 8, i64 8)
  %7 = call ptr @miri_unsafe_alloc(i64 8, i64 8)
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1350, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1352, metadata !DIExpression()), !dbg !1355
  store i8 1, ptr %_7, align 1, !dbg !1356
  store i64 5, ptr %x.dbg.spill.i, align 8
  call void @llvm.dbg.declare(metadata ptr %x.dbg.spill.i, metadata !1357, metadata !DIExpression()), !dbg !1363
  %_4.i = invoke ptr @_ZN5alloc5alloc15exchange_malloc17h6cc58ed5800e9023E(i64 8, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h116662074d1f5b9cE.exit" unwind label %cleanup.i, !dbg !1365

cleanup.i:                                        ; preds = %start
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %10, ptr %11, align 8
  %12 = load ptr, ptr %0, align 8, !dbg !1366, !noundef !99
  %13 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1366
  %14 = load i32, ptr %13, align 8, !dbg !1366, !noundef !99
  %15 = insertvalue { ptr, i32 } poison, ptr %12, 0, !dbg !1366
  %16 = insertvalue { ptr, i32 } %15, i32 %14, 1, !dbg !1366
  resume { ptr, i32 } %16, !dbg !1366

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h116662074d1f5b9cE.exit": ; preds = %start
  store i64 5, ptr %_4.i, align 8, !dbg !1367
  store ptr %_4.i, ptr %7, align 8, !dbg !1356
  store ptr %7, ptr %5, align 8, !dbg !1368
  %17 = load ptr, ptr %5, align 8, !dbg !1368, !nonnull !99, !align !491, !noundef !99
  %18 = invoke align 8 ptr @"_ZN80_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$T$GT$$GT$6as_mut17hc7acadc6d82d92bdE"(ptr align 8 %17)
          to label %bb2 unwind label %cleanup, !dbg !1368

bb7:                                              ; preds = %cleanup
  %19 = load i8, ptr %_7, align 1, !dbg !1369, !range !1370, !noundef !99
  %20 = trunc i8 %19 to i1, !dbg !1369
  br i1 %20, label %bb6, label %bb5, !dbg !1369

cleanup:                                          ; preds = %bb3, %bb2, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h116662074d1f5b9cE.exit"
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  store ptr %22, ptr %1, align 8
  %24 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %23, ptr %24, align 8
  br label %bb7

bb2:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h116662074d1f5b9cE.exit"
  store ptr %18, ptr %6, align 8, !dbg !1368
  %25 = load ptr, ptr %6, align 8, !dbg !1371, !nonnull !99, !align !491, !noundef !99
  store ptr %25, ptr %3, align 8, !dbg !1371
  %26 = load ptr, ptr %3, align 8, !dbg !1372, !noundef !99
  invoke void @_ZN4core3ptr14write_volatile17hc06ce39af1b25267E(ptr %26, i64 12)
          to label %bb3 unwind label %cleanup, !dbg !1372

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_7, align 1, !dbg !1373
  %27 = load ptr, ptr %7, align 8, !dbg !1373, !nonnull !99, !align !491, !noundef !99
  store ptr %27, ptr %2, align 8, !dbg !1373
  %28 = load ptr, ptr %2, align 8, !dbg !1374, !nonnull !99, !align !491, !noundef !99
  %_0 = invoke i64 @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$10into_inner17h0a0273a7c9721602E"(ptr align 8 %28)
          to label %bb4 unwind label %cleanup, !dbg !1374

bb4:                                              ; preds = %bb3
  call void @miri_reset_unsafe_alloc(), !dbg !1375
  ret i64 %_0, !dbg !1375

bb5:                                              ; preds = %bb6, %bb7
  %29 = load ptr, ptr %1, align 8, !dbg !1377, !noundef !99
  %30 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1377
  %31 = load i32, ptr %30, align 8, !dbg !1377, !noundef !99
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0, !dbg !1377
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1, !dbg !1377
  resume { ptr, i32 } %33, !dbg !1377

bb6:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr51drop_in_place$LT$alloc..boxed..Box$LT$usize$GT$$GT$17hd96a9a1b57d088b2E"(ptr align 8 %7) #14
          to label %bb5 unwind label %terminate, !dbg !1369

terminate:                                        ; preds = %bb6
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %35 = extractvalue { ptr, i32 } %34, 0
  %36 = extractvalue { ptr, i32 } %34, 1
  call void @_ZN4core9panicking16panic_in_cleanup17h99cf92375d36dccfE() #12, !dbg !1377
  unreachable, !dbg !1377
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h39af953a99c9e120E() unnamed_addr #4

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking14panic_nounwind17hfa6e54027f88a877E(ptr align 1, i64) unnamed_addr #4

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h99cf92375d36dccfE() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h06f28fab97f71562E(ptr align 1, i64, ptr align 8) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62b2376730a8edd9E(ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17hd2bdf08e0f0784f0E(i64, i64) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #10

declare ptr @miri_unsafe_alloc(i64, i64)

declare void @miri_reset_unsafe_alloc()

attributes #0 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{!"rustc version 1.78.0-nightly (9033d5bb1 2025-01-04)"}
!5 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.78.0-nightly (9033d5bb1 2025-01-04))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "src/lib.rs/@/4efu757uhs8yyvdi", directory: "/home/swli/rust-isolation/lib_demo")
!7 = !{!8, !19}
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !10, file: !9, baseType: !13, size: 8, align: 8, flags: DIFlagEnumClass, elements: !14)
!9 = !DIFile(filename: "<unknown>", directory: "")
!10 = !DINamespace(name: "rt", scope: !11)
!11 = !DINamespace(name: "fmt", scope: !12)
!12 = !DINamespace(name: "core", scope: null)
!13 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "Left", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "Right", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "Center", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "Unknown", value: 3, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AlignmentEnum", scope: !20, file: !9, baseType: !22, size: 64, align: 64, flags: DIFlagEnumClass, elements: !23)
!20 = !DINamespace(name: "alignment", scope: !21)
!21 = !DINamespace(name: "ptr", scope: !12)
!22 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!24 = !DIEnumerator(name: "_Align1Shl0", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "_Align1Shl1", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "_Align1Shl2", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "_Align1Shl3", value: 8, isUnsigned: true)
!28 = !DIEnumerator(name: "_Align1Shl4", value: 16, isUnsigned: true)
!29 = !DIEnumerator(name: "_Align1Shl5", value: 32, isUnsigned: true)
!30 = !DIEnumerator(name: "_Align1Shl6", value: 64, isUnsigned: true)
!31 = !DIEnumerator(name: "_Align1Shl7", value: 128, isUnsigned: true)
!32 = !DIEnumerator(name: "_Align1Shl8", value: 256, isUnsigned: true)
!33 = !DIEnumerator(name: "_Align1Shl9", value: 512, isUnsigned: true)
!34 = !DIEnumerator(name: "_Align1Shl10", value: 1024, isUnsigned: true)
!35 = !DIEnumerator(name: "_Align1Shl11", value: 2048, isUnsigned: true)
!36 = !DIEnumerator(name: "_Align1Shl12", value: 4096, isUnsigned: true)
!37 = !DIEnumerator(name: "_Align1Shl13", value: 8192, isUnsigned: true)
!38 = !DIEnumerator(name: "_Align1Shl14", value: 16384, isUnsigned: true)
!39 = !DIEnumerator(name: "_Align1Shl15", value: 32768, isUnsigned: true)
!40 = !DIEnumerator(name: "_Align1Shl16", value: 65536, isUnsigned: true)
!41 = !DIEnumerator(name: "_Align1Shl17", value: 131072, isUnsigned: true)
!42 = !DIEnumerator(name: "_Align1Shl18", value: 262144, isUnsigned: true)
!43 = !DIEnumerator(name: "_Align1Shl19", value: 524288, isUnsigned: true)
!44 = !DIEnumerator(name: "_Align1Shl20", value: 1048576, isUnsigned: true)
!45 = !DIEnumerator(name: "_Align1Shl21", value: 2097152, isUnsigned: true)
!46 = !DIEnumerator(name: "_Align1Shl22", value: 4194304, isUnsigned: true)
!47 = !DIEnumerator(name: "_Align1Shl23", value: 8388608, isUnsigned: true)
!48 = !DIEnumerator(name: "_Align1Shl24", value: 16777216, isUnsigned: true)
!49 = !DIEnumerator(name: "_Align1Shl25", value: 33554432, isUnsigned: true)
!50 = !DIEnumerator(name: "_Align1Shl26", value: 67108864, isUnsigned: true)
!51 = !DIEnumerator(name: "_Align1Shl27", value: 134217728, isUnsigned: true)
!52 = !DIEnumerator(name: "_Align1Shl28", value: 268435456, isUnsigned: true)
!53 = !DIEnumerator(name: "_Align1Shl29", value: 536870912, isUnsigned: true)
!54 = !DIEnumerator(name: "_Align1Shl30", value: 1073741824, isUnsigned: true)
!55 = !DIEnumerator(name: "_Align1Shl31", value: 2147483648, isUnsigned: true)
!56 = !DIEnumerator(name: "_Align1Shl32", value: 4294967296, isUnsigned: true)
!57 = !DIEnumerator(name: "_Align1Shl33", value: 8589934592, isUnsigned: true)
!58 = !DIEnumerator(name: "_Align1Shl34", value: 17179869184, isUnsigned: true)
!59 = !DIEnumerator(name: "_Align1Shl35", value: 34359738368, isUnsigned: true)
!60 = !DIEnumerator(name: "_Align1Shl36", value: 68719476736, isUnsigned: true)
!61 = !DIEnumerator(name: "_Align1Shl37", value: 137438953472, isUnsigned: true)
!62 = !DIEnumerator(name: "_Align1Shl38", value: 274877906944, isUnsigned: true)
!63 = !DIEnumerator(name: "_Align1Shl39", value: 549755813888, isUnsigned: true)
!64 = !DIEnumerator(name: "_Align1Shl40", value: 1099511627776, isUnsigned: true)
!65 = !DIEnumerator(name: "_Align1Shl41", value: 2199023255552, isUnsigned: true)
!66 = !DIEnumerator(name: "_Align1Shl42", value: 4398046511104, isUnsigned: true)
!67 = !DIEnumerator(name: "_Align1Shl43", value: 8796093022208, isUnsigned: true)
!68 = !DIEnumerator(name: "_Align1Shl44", value: 17592186044416, isUnsigned: true)
!69 = !DIEnumerator(name: "_Align1Shl45", value: 35184372088832, isUnsigned: true)
!70 = !DIEnumerator(name: "_Align1Shl46", value: 70368744177664, isUnsigned: true)
!71 = !DIEnumerator(name: "_Align1Shl47", value: 140737488355328, isUnsigned: true)
!72 = !DIEnumerator(name: "_Align1Shl48", value: 281474976710656, isUnsigned: true)
!73 = !DIEnumerator(name: "_Align1Shl49", value: 562949953421312, isUnsigned: true)
!74 = !DIEnumerator(name: "_Align1Shl50", value: 1125899906842624, isUnsigned: true)
!75 = !DIEnumerator(name: "_Align1Shl51", value: 2251799813685248, isUnsigned: true)
!76 = !DIEnumerator(name: "_Align1Shl52", value: 4503599627370496, isUnsigned: true)
!77 = !DIEnumerator(name: "_Align1Shl53", value: 9007199254740992, isUnsigned: true)
!78 = !DIEnumerator(name: "_Align1Shl54", value: 18014398509481984, isUnsigned: true)
!79 = !DIEnumerator(name: "_Align1Shl55", value: 36028797018963968, isUnsigned: true)
!80 = !DIEnumerator(name: "_Align1Shl56", value: 72057594037927936, isUnsigned: true)
!81 = !DIEnumerator(name: "_Align1Shl57", value: 144115188075855872, isUnsigned: true)
!82 = !DIEnumerator(name: "_Align1Shl58", value: 288230376151711744, isUnsigned: true)
!83 = !DIEnumerator(name: "_Align1Shl59", value: 576460752303423488, isUnsigned: true)
!84 = !DIEnumerator(name: "_Align1Shl60", value: 1152921504606846976, isUnsigned: true)
!85 = !DIEnumerator(name: "_Align1Shl61", value: 2305843009213693952, isUnsigned: true)
!86 = !DIEnumerator(name: "_Align1Shl62", value: 4611686018427387904, isUnsigned: true)
!87 = !DIEnumerator(name: "_Align1Shl63", value: 9223372036854775808, isUnsigned: true)
!88 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr13read_volatile18precondition_check17h2734e807dc35308cE", scope: !90, file: !89, line: 2750, type: !91, scopeLine: 2750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !96)
!89 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/intrinsics.rs", directory: "", checksumkind: CSK_MD5, checksum: "73a2d69a11eab3673629d5815d0641c5")
!90 = !DINamespace(name: "read_volatile", scope: !21)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93, !95}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !94, size: 64, align: 64, dwarfAddressSpace: 0)
!94 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!95 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!96 = !{!97, !98}
!97 = !DILocalVariable(name: "addr", arg: 1, scope: !88, file: !89, line: 2750, type: !93)
!98 = !DILocalVariable(name: "align", arg: 2, scope: !88, file: !89, line: 2750, type: !95)
!99 = !{}
!100 = !DILocation(line: 2750, column: 37, scope: !88)
!101 = !DILocalVariable(name: "ptr", arg: 1, scope: !102, file: !89, line: 2770, type: !93)
!102 = distinct !DILexicalBlock(scope: !103, file: !89, line: 2770, column: 1)
!103 = distinct !DISubprogram(name: "is_aligned_and_not_null", linkageName: "_ZN4core10intrinsics23is_aligned_and_not_null17hf98f3d1d692fe5cfE", scope: !104, file: !89, line: 2770, type: !105, scopeLine: 2770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !108)
!104 = !DINamespace(name: "intrinsics", scope: !12)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !93, !95}
!107 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!108 = !{!101, !109}
!109 = !DILocalVariable(name: "align", arg: 2, scope: !102, file: !89, line: 2770, type: !95)
!110 = !DILocation(line: 2770, column: 39, scope: !102, inlinedAt: !111)
!111 = !DILocation(line: 1634, column: 18, scope: !112)
!112 = !DILexicalBlockFile(scope: !88, file: !113, discriminator: 0)
!113 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "a4cd7ca551038dd07afd86edb8fa6115")
!114 = !DILocalVariable(name: "self", arg: 1, scope: !115, file: !116, line: 35, type: !93)
!115 = distinct !DILexicalBlock(scope: !117, file: !116, line: 35, column: 5)
!116 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "b52bc9503d18b506848b8aac2cf7152e")
!117 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h11c6ad2d6023d85cE", scope: !118, file: !116, line: 35, type: !120, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !123, retainedNodes: !122)
!118 = !DINamespace(name: "{impl#0}", scope: !119)
!119 = !DINamespace(name: "const_ptr", scope: !21)
!120 = !DISubroutineType(types: !121)
!121 = !{!107, !93}
!122 = !{!114}
!123 = !{!124}
!124 = !DITemplateTypeParameter(name: "T", type: !94)
!125 = !DILocation(line: 35, column: 26, scope: !115, inlinedAt: !126)
!126 = !DILocation(line: 2771, column: 10, scope: !102, inlinedAt: !111)
!127 = !DILocation(line: 2770, column: 55, scope: !102, inlinedAt: !111)
!128 = !DILocation(line: 52, column: 37, scope: !115, inlinedAt: !126)
!129 = !DILocalVariable(name: "ptr", arg: 1, scope: !130, file: !116, line: 37, type: !135)
!130 = distinct !DILexicalBlock(scope: !131, file: !116, line: 37, column: 9)
!131 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null12runtime_impl17hab1b3a580320b70eE", scope: !132, file: !116, line: 37, type: !133, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !136)
!132 = !DINamespace(name: "is_null", scope: !118)
!133 = !DISubroutineType(types: !134)
!134 = !{!107, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!136 = !{!129}
!137 = !DILocation(line: 37, column: 25, scope: !130, inlinedAt: !138)
!138 = !DILocation(line: 52, column: 18, scope: !115, inlinedAt: !126)
!139 = !DILocalVariable(name: "self", arg: 1, scope: !140, file: !116, line: 206, type: !135)
!140 = distinct !DILexicalBlock(scope: !141, file: !116, line: 206, column: 5)
!141 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h68919ccb6fbb5774E", scope: !118, file: !116, line: 206, type: !142, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{!95, !135}
!144 = !{!139}
!145 = !{!146}
!146 = !DITemplateTypeParameter(name: "T", type: !13)
!147 = !DILocation(line: 206, column: 17, scope: !140, inlinedAt: !148)
!148 = !DILocation(line: 38, column: 17, scope: !130, inlinedAt: !138)
!149 = !DILocalVariable(name: "self", arg: 1, scope: !150, file: !116, line: 60, type: !135)
!150 = distinct !DILexicalBlock(scope: !151, file: !116, line: 60, column: 5)
!151 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h7a8820c6b987dd5bE", scope: !118, file: !116, line: 60, type: !152, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !155, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!93, !135}
!154 = !{!149}
!155 = !{!146, !156}
!156 = !DITemplateTypeParameter(name: "U", type: !94)
!157 = !DILocation(line: 60, column: 26, scope: !150, inlinedAt: !158)
!158 = !DILocation(line: 210, column: 38, scope: !140, inlinedAt: !148)
!159 = !DILocation(line: 210, column: 18, scope: !140, inlinedAt: !148)
!160 = !DILocation(line: 2771, column: 6, scope: !102, inlinedAt: !111)
!161 = !DILocation(line: 2771, column: 5, scope: !102, inlinedAt: !111)
!162 = !DILocation(line: 2771, column: 23, scope: !102, inlinedAt: !111)
!163 = !DILocation(line: 2752, column: 21, scope: !88)
!164 = !DILocation(line: 2750, column: 13, scope: !88)
!165 = !DILocation(line: 2756, column: 14, scope: !88)
!166 = distinct !DISubprogram(name: "write_volatile<usize>", linkageName: "_ZN4core3ptr14write_volatile17hc06ce39af1b25267E", scope: !21, file: !113, line: 1704, type: !167, scopeLine: 1704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !173, retainedNodes: !170)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !95}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut usize", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!170 = !{!171, !172}
!171 = !DILocalVariable(name: "dst", arg: 1, scope: !166, file: !113, line: 1704, type: !169)
!172 = !DILocalVariable(name: "src", arg: 2, scope: !166, file: !113, line: 1704, type: !95)
!173 = !{!174}
!174 = !DITemplateTypeParameter(name: "T", type: !95)
!175 = !DILocation(line: 1704, column: 33, scope: !166)
!176 = !DILocation(line: 1704, column: 46, scope: !166)
!177 = !DILocation(line: 1707, column: 9, scope: !166)
!178 = !DILocation(line: 1714, column: 9, scope: !166)
!179 = !DILocation(line: 1716, column: 2, scope: !166)
!180 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr14write_volatile18precondition_check17h920ab71e54e9413fE", scope: !181, file: !89, line: 2750, type: !182, scopeLine: 2750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !185)
!181 = !DINamespace(name: "write_volatile", scope: !21)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !184, !95}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut ()", baseType: !94, size: 64, align: 64, dwarfAddressSpace: 0)
!185 = !{!186, !187}
!186 = !DILocalVariable(name: "addr", arg: 1, scope: !180, file: !89, line: 2750, type: !184)
!187 = !DILocalVariable(name: "align", arg: 2, scope: !180, file: !89, line: 2750, type: !95)
!188 = !DILocation(line: 2750, column: 37, scope: !180)
!189 = !DILocalVariable(name: "align", arg: 2, scope: !190, file: !89, line: 2770, type: !95)
!190 = distinct !DILexicalBlock(scope: !191, file: !89, line: 2770, column: 1)
!191 = distinct !DISubprogram(name: "is_aligned_and_not_null", linkageName: "_ZN4core10intrinsics23is_aligned_and_not_null17hf98f3d1d692fe5cfE", scope: !104, file: !89, line: 2770, type: !105, scopeLine: 2770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !192)
!192 = !{!193, !189}
!193 = !DILocalVariable(name: "ptr", arg: 1, scope: !190, file: !89, line: 2770, type: !93)
!194 = !DILocation(line: 2770, column: 55, scope: !190, inlinedAt: !195)
!195 = !DILocation(line: 1712, column: 18, scope: !196)
!196 = !DILexicalBlockFile(scope: !180, file: !113, discriminator: 0)
!197 = !DILocation(line: 1712, column: 42, scope: !196)
!198 = !DILocation(line: 2770, column: 39, scope: !190, inlinedAt: !195)
!199 = !DILocalVariable(name: "self", arg: 1, scope: !200, file: !116, line: 35, type: !93)
!200 = distinct !DILexicalBlock(scope: !201, file: !116, line: 35, column: 5)
!201 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h11c6ad2d6023d85cE", scope: !118, file: !116, line: 35, type: !120, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !123, retainedNodes: !202)
!202 = !{!199}
!203 = !DILocation(line: 35, column: 26, scope: !200, inlinedAt: !204)
!204 = !DILocation(line: 2771, column: 10, scope: !190, inlinedAt: !195)
!205 = !DILocation(line: 52, column: 37, scope: !200, inlinedAt: !204)
!206 = !DILocalVariable(name: "ptr", arg: 1, scope: !207, file: !116, line: 37, type: !135)
!207 = distinct !DILexicalBlock(scope: !208, file: !116, line: 37, column: 9)
!208 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null12runtime_impl17hab1b3a580320b70eE", scope: !132, file: !116, line: 37, type: !133, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !209)
!209 = !{!206}
!210 = !DILocation(line: 37, column: 25, scope: !207, inlinedAt: !211)
!211 = !DILocation(line: 52, column: 18, scope: !200, inlinedAt: !204)
!212 = !DILocalVariable(name: "self", arg: 1, scope: !213, file: !116, line: 206, type: !135)
!213 = distinct !DILexicalBlock(scope: !214, file: !116, line: 206, column: 5)
!214 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h68919ccb6fbb5774E", scope: !118, file: !116, line: 206, type: !142, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !215)
!215 = !{!212}
!216 = !DILocation(line: 206, column: 17, scope: !213, inlinedAt: !217)
!217 = !DILocation(line: 38, column: 17, scope: !207, inlinedAt: !211)
!218 = !DILocalVariable(name: "self", arg: 1, scope: !219, file: !116, line: 60, type: !135)
!219 = distinct !DILexicalBlock(scope: !220, file: !116, line: 60, column: 5)
!220 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h7a8820c6b987dd5bE", scope: !118, file: !116, line: 60, type: !152, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !155, retainedNodes: !221)
!221 = !{!218}
!222 = !DILocation(line: 60, column: 26, scope: !219, inlinedAt: !223)
!223 = !DILocation(line: 210, column: 38, scope: !213, inlinedAt: !217)
!224 = !DILocation(line: 210, column: 18, scope: !213, inlinedAt: !217)
!225 = !DILocation(line: 2771, column: 6, scope: !190, inlinedAt: !195)
!226 = !DILocation(line: 2771, column: 5, scope: !190, inlinedAt: !195)
!227 = !DILocation(line: 2771, column: 23, scope: !190, inlinedAt: !195)
!228 = !DILocation(line: 2752, column: 21, scope: !180)
!229 = !DILocation(line: 2750, column: 13, scope: !180)
!230 = !DILocation(line: 2756, column: 14, scope: !180)
!231 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<usize, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr51drop_in_place$LT$alloc..boxed..Box$LT$usize$GT$$GT$17hd96a9a1b57d088b2E", scope: !21, file: !113, line: 515, type: !232, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !238, retainedNodes: !236)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut alloc::boxed::Box<usize, alloc::alloc::Global>", baseType: !235, size: 64, align: 64, dwarfAddressSpace: 0)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<usize, alloc::alloc::Global>", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!236 = !{!237}
!237 = !DILocalVariable(arg: 1, scope: !231, file: !113, line: 515, type: !234)
!238 = !{!239}
!239 = !DITemplateTypeParameter(name: "T", type: !235)
!240 = !DILocation(line: 515, column: 1, scope: !231)
!241 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hed7837febff000fbE", scope: !242, file: !89, line: 2750, type: !245, scopeLine: 2750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !247)
!242 = !DINamespace(name: "new_unchecked", scope: !243)
!243 = !DINamespace(name: "{impl#3}", scope: !244)
!244 = !DINamespace(name: "non_null", scope: !21)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !184}
!247 = !{!248}
!248 = !DILocalVariable(name: "ptr", arg: 1, scope: !241, file: !89, line: 2750, type: !184)
!249 = !DILocation(line: 2750, column: 37, scope: !241)
!250 = !DILocalVariable(name: "self", arg: 1, scope: !251, file: !252, line: 35, type: !184)
!251 = distinct !DILexicalBlock(scope: !253, file: !252, line: 35, column: 5)
!252 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "7145bf1440868d3aeb251a5af6f2fce2")
!253 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbfaef26d7faf03dfE", scope: !254, file: !252, line: 35, type: !256, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !123, retainedNodes: !258)
!254 = !DINamespace(name: "{impl#0}", scope: !255)
!255 = !DINamespace(name: "mut_ptr", scope: !21)
!256 = !DISubroutineType(types: !257)
!257 = !{!107, !184}
!258 = !{!250}
!259 = !DILocation(line: 35, column: 26, scope: !251, inlinedAt: !260)
!260 = !DILocation(line: 222, column: 57, scope: !261)
!261 = !DILexicalBlockFile(scope: !241, file: !262, discriminator: 0)
!262 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/non_null.rs", directory: "", checksumkind: CSK_MD5, checksum: "a145fe82a5df4d863530a0287eb10483")
!263 = !DILocation(line: 52, column: 37, scope: !251, inlinedAt: !260)
!264 = !DILocalVariable(name: "ptr", arg: 1, scope: !265, file: !252, line: 37, type: !270)
!265 = distinct !DILexicalBlock(scope: !266, file: !252, line: 37, column: 9)
!266 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null12runtime_impl17hd8487579b6546989E", scope: !267, file: !252, line: 37, type: !268, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !271)
!267 = !DINamespace(name: "is_null", scope: !254)
!268 = !DISubroutineType(types: !269)
!269 = !{!107, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!271 = !{!264}
!272 = !DILocation(line: 37, column: 25, scope: !265, inlinedAt: !273)
!273 = !DILocation(line: 52, column: 18, scope: !251, inlinedAt: !260)
!274 = !DILocalVariable(name: "self", arg: 1, scope: !275, file: !252, line: 214, type: !270)
!275 = distinct !DILexicalBlock(scope: !276, file: !252, line: 214, column: 5)
!276 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h0670eef09c628f9cE", scope: !254, file: !252, line: 214, type: !277, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!95, !270}
!279 = !{!274}
!280 = !DILocation(line: 214, column: 17, scope: !275, inlinedAt: !281)
!281 = !DILocation(line: 38, column: 17, scope: !265, inlinedAt: !273)
!282 = !DILocalVariable(name: "self", arg: 1, scope: !283, file: !252, line: 60, type: !270)
!283 = distinct !DILexicalBlock(scope: !284, file: !252, line: 60, column: 5)
!284 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17h0c0641e4bd39a6f4E", scope: !254, file: !252, line: 60, type: !285, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !155, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!184, !270}
!287 = !{!282}
!288 = !DILocation(line: 60, column: 26, scope: !283, inlinedAt: !289)
!289 = !DILocation(line: 218, column: 38, scope: !275, inlinedAt: !281)
!290 = !DILocation(line: 218, column: 18, scope: !275, inlinedAt: !281)
!291 = !DILocation(line: 222, column: 53, scope: !261)
!292 = !DILocation(line: 2752, column: 21, scope: !241)
!293 = !DILocation(line: 2756, column: 14, scope: !241)
!294 = distinct !DISubprogram(name: "is_aligned_to<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h6fbdd1cd9a11fd64E", scope: !118, file: !116, line: 1607, type: !105, scopeLine: 1607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !123, retainedNodes: !295)
!295 = !{!296, !297}
!296 = !DILocalVariable(name: "self", arg: 1, scope: !294, file: !116, line: 1607, type: !93)
!297 = !DILocalVariable(name: "align", arg: 2, scope: !294, file: !116, line: 1607, type: !95)
!298 = !DILocation(line: 1607, column: 32, scope: !294)
!299 = !DILocalVariable(name: "self", arg: 1, scope: !300, file: !116, line: 60, type: !93)
!300 = distinct !DILexicalBlock(scope: !301, file: !116, line: 60, column: 5)
!301 = distinct !DISubprogram(name: "cast<(), ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h33608644b47bb81cE", scope: !118, file: !116, line: 60, type: !302, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !307, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!93, !93}
!304 = !{!299, !305}
!305 = !DILocalVariable(name: "self", arg: 1, scope: !306, file: !116, line: 60, type: !93)
!306 = distinct !DILexicalBlock(scope: !301, file: !116, line: 60, column: 5)
!307 = !{!124, !156}
!308 = !DILocation(line: 60, column: 26, scope: !300, inlinedAt: !309)
!309 = !DILocation(line: 1627, column: 42, scope: !294)
!310 = !DILocation(line: 1607, column: 38, scope: !294)
!311 = !DILocalVariable(name: "self", arg: 1, scope: !312, file: !313, line: 1281, type: !95)
!312 = !DILexicalBlockFile(scope: !314, file: !313, discriminator: 0)
!313 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/num/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "03eb9371ac6ef6f22725c194b88148fe")
!314 = distinct !DILexicalBlock(scope: !316, file: !315, line: 2689, column: 9)
!315 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "278bd6ca98d30809003b0b6c02c39a08")
!316 = distinct !DISubprogram(name: "is_power_of_two", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h4787de5dc2215a7fE", scope: !317, file: !315, line: 2689, type: !319, scopeLine: 2689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !321)
!317 = !DINamespace(name: "{impl#11}", scope: !318)
!318 = !DINamespace(name: "num", scope: !12)
!319 = !DISubroutineType(types: !320)
!320 = !{!107, !95}
!321 = !{!311}
!322 = !DILocation(line: 1281, column: 5, scope: !312, inlinedAt: !323)
!323 = !DILocation(line: 1608, column: 19, scope: !294)
!324 = !DILocalVariable(name: "self", arg: 1, scope: !325, file: !313, line: 1281, type: !95)
!325 = !DILexicalBlockFile(scope: !326, file: !313, discriminator: 0)
!326 = distinct !DILexicalBlock(scope: !327, file: !315, line: 106, column: 9)
!327 = distinct !DISubprogram(name: "count_ones", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$10count_ones17h448b009bfc07b2b6E", scope: !317, file: !315, line: 106, type: !328, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !331)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !95}
!330 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!331 = !{!324}
!332 = !DILocation(line: 1281, column: 5, scope: !325, inlinedAt: !333)
!333 = !DILocation(line: 2690, column: 18, scope: !314, inlinedAt: !323)
!334 = !DILocalVariable(name: "align", arg: 2, scope: !335, file: !116, line: 1613, type: !95)
!335 = distinct !DILexicalBlock(scope: !336, file: !116, line: 1613, column: 9)
!336 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to12runtime_impl17h71dbfacc6d1f4e46E", scope: !337, file: !116, line: 1613, type: !105, scopeLine: 1613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !338)
!337 = !DINamespace(name: "is_aligned_to", scope: !118)
!338 = !{!339, !334}
!339 = !DILocalVariable(name: "ptr", arg: 1, scope: !335, file: !116, line: 1613, type: !93)
!340 = !DILocation(line: 1613, column: 41, scope: !335, inlinedAt: !341)
!341 = !DILocation(line: 1627, column: 18, scope: !294)
!342 = !DILocation(line: 1608, column: 13, scope: !294)
!343 = !DILocation(line: 61, column: 9, scope: !300, inlinedAt: !309)
!344 = !DILocation(line: 1613, column: 25, scope: !335, inlinedAt: !341)
!345 = !DILocalVariable(name: "self", arg: 1, scope: !346, file: !116, line: 206, type: !93)
!346 = distinct !DILexicalBlock(scope: !347, file: !116, line: 206, column: 5)
!347 = distinct !DISubprogram(name: "addr<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h45db904ad799eed4E", scope: !118, file: !116, line: 206, type: !348, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !123, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!95, !93}
!350 = !{!345}
!351 = !DILocation(line: 206, column: 17, scope: !346, inlinedAt: !352)
!352 = !DILocation(line: 1614, column: 17, scope: !335, inlinedAt: !341)
!353 = !DILocation(line: 60, column: 26, scope: !306, inlinedAt: !354)
!354 = !DILocation(line: 210, column: 38, scope: !346, inlinedAt: !352)
!355 = !DILocation(line: 210, column: 18, scope: !346, inlinedAt: !352)
!356 = !DILocation(line: 1614, column: 26, scope: !335, inlinedAt: !341)
!357 = !DILocation(line: 1609, column: 20, scope: !294)
!358 = !DILocalVariable(name: "pieces", arg: 1, scope: !359, file: !360, line: 321, type: !365)
!359 = distinct !DILexicalBlock(scope: !361, file: !360, line: 321, column: 5)
!360 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/fmt/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "f2f9e528240e472a11f8ea13e1ff6e2a")
!361 = distinct !DISubprogram(name: "new_const", linkageName: "_ZN4core3fmt9Arguments9new_const17h842e1ecbcfb4e353E", scope: !362, file: !360, line: 321, type: !482, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !484, retainedNodes: !485)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !11, file: !9, size: 384, align: 64, flags: DIFlagPublic, elements: !363, templateParams: !99, identifier: "f0f8dc17b10f589e8c632e19601a87f9")
!363 = !{!364, !375, !419}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pieces", scope: !362, file: !9, baseType: !365, size: 128, align: 64, flags: DIFlagPrivate)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[&str]", file: !9, size: 128, align: 64, elements: !366, templateParams: !99, identifier: "d76b83877ddcb5cca61caf6bdca727ac")
!366 = !{!367, !374}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !365, file: !9, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64, dwarfAddressSpace: 0)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !9, size: 128, align: 64, elements: !370, templateParams: !99, identifier: "857c99401054bcaa39f98e6e0c6d74b")
!370 = !{!371, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !369, file: !9, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !369, file: !9, baseType: !95, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !365, file: !9, baseType: !95, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !362, file: !9, baseType: !376, size: 128, align: 64, offset: 256, flags: DIFlagPrivate)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&[core::fmt::rt::Placeholder]>", scope: !377, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !378, templateParams: !99, identifier: "55d669bc4e77b25bb8dcfd917318c7ae")
!377 = !DINamespace(name: "option", scope: !12)
!378 = !{!379}
!379 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !376, file: !9, size: 128, align: 64, elements: !380, templateParams: !99, identifier: "5e3b9f63eb2d129e7215ab7c4036ac03", discriminator: !418)
!380 = !{!381, !414}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !379, file: !9, baseType: !382, size: 128, align: 64, extraData: i128 0)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !376, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !99, templateParams: !383, identifier: "e9ef3b1e9bf46c57405a0b90ea03bfc0")
!383 = !{!384}
!384 = !DITemplateTypeParameter(name: "T", type: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::Placeholder]", file: !9, size: 128, align: 64, elements: !386, templateParams: !99, identifier: "fbd3e0a7f44769f0bf6df3f83e07b5e")
!386 = !{!387, !413}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !385, file: !9, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64, dwarfAddressSpace: 0)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Placeholder", scope: !10, file: !9, size: 448, align: 64, flags: DIFlagPublic, elements: !390, templateParams: !99, identifier: "43c727a4a66b188dd180ae6e2fbcc3c3")
!390 = !{!391, !392, !394, !395, !396, !412}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !389, file: !9, baseType: !95, size: 64, align: 64, offset: 256, flags: DIFlagPublic)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !389, file: !9, baseType: !393, size: 32, align: 32, offset: 320, flags: DIFlagPublic)
!393 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_UTF)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !389, file: !9, baseType: !8, size: 8, align: 8, offset: 384, flags: DIFlagPublic)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !9, baseType: !330, size: 32, align: 32, offset: 352, flags: DIFlagPublic)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !389, file: !9, baseType: !397, size: 128, align: 64, flags: DIFlagPublic)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !10, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !398, templateParams: !99, identifier: "fca0db62d27860ef7496f1bf572fc286")
!398 = !{!399}
!399 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !397, file: !9, size: 128, align: 64, elements: !400, templateParams: !99, identifier: "e8029c725f6ed2142880fca127ad5249", discriminator: !411)
!400 = !{!401, !405, !409}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "Is", scope: !399, file: !9, baseType: !402, size: 128, align: 64, extraData: i128 0)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Is", scope: !397, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !403, templateParams: !99, identifier: "e897b533030b5dc2e433d85a2540bcd2")
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !402, file: !9, baseType: !95, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "Param", scope: !399, file: !9, baseType: !406, size: 128, align: 64, extraData: i128 1)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Param", scope: !397, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !407, templateParams: !99, identifier: "af8b291070fd6ee03f4d08227af5e84")
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !406, file: !9, baseType: !95, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "Implied", scope: !399, file: !9, baseType: !410, size: 128, align: 64, extraData: i128 2)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Implied", scope: !397, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !99, identifier: "6aad873126c0d031d48f0d18254d8e04")
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !9, baseType: !22, size: 64, align: 64, flags: DIFlagArtificial)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !389, file: !9, baseType: !397, size: 128, align: 64, offset: 128, flags: DIFlagPublic)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !385, file: !9, baseType: !95, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !379, file: !9, baseType: !415, size: 128, align: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !376, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !416, templateParams: !383, identifier: "46b07484a91fda8d8b443b7ca2ca4658")
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !415, file: !9, baseType: !385, size: 128, align: 64, flags: DIFlagPublic)
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !9, baseType: !22, size: 64, align: 64, flags: DIFlagArtificial)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !362, file: !9, baseType: !420, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::Argument]", file: !9, size: 128, align: 64, elements: !421, templateParams: !99, identifier: "9abee630cc4d5f7efcb79ccc5a8ea271")
!421 = !{!422, !481}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !420, file: !9, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64, dwarfAddressSpace: 0)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !10, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !425, templateParams: !99, identifier: "d62ddf666a78b63b8f29385dcfcdcdf4")
!425 = !{!426, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !424, file: !9, baseType: !427, size: 64, align: 64, flags: DIFlagPrivate)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::fmt::rt::{extern#0}::Opaque", baseType: !428, size: 64, align: 64, dwarfAddressSpace: 0)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Opaque", scope: !429, file: !9, align: 8, elements: !99, identifier: "5b5bc633882054d9f604f361c4e3d23f")
!429 = !DINamespace(name: "{extern#0}", scope: !10)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !424, file: !9, baseType: !431, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&core::fmt::rt::{extern#0}::Opaque, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !432, size: 64, align: 64, dwarfAddressSpace: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !427, !451}
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), core::fmt::Error>", scope: !435, file: !9, size: 8, align: 8, flags: DIFlagPublic, elements: !436, templateParams: !99, identifier: "f8254177ed90220581b82211c13108c1")
!435 = !DINamespace(name: "result", scope: !12)
!436 = !{!437}
!437 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !434, file: !9, size: 8, align: 8, elements: !438, templateParams: !99, identifier: "5803b59a34424f4674bcc75a4e1f535", discriminator: !450)
!438 = !{!439, !446}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !437, file: !9, baseType: !440, size: 8, align: 8, extraData: i128 0)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !434, file: !9, size: 8, align: 8, flags: DIFlagPublic, elements: !441, templateParams: !443, identifier: "7bc03bf0c2395f82a15ca2eb66bde90a")
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !440, file: !9, baseType: !94, align: 8, offset: 8, flags: DIFlagPublic)
!443 = !{!124, !444}
!444 = !DITemplateTypeParameter(name: "E", type: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !11, file: !9, align: 8, flags: DIFlagPublic, elements: !99, identifier: "2abed11c5adf5f8bf1eb256c8a923ea7")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !437, file: !9, baseType: !447, size: 8, align: 8, extraData: i128 1)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !434, file: !9, size: 8, align: 8, flags: DIFlagPublic, elements: !448, templateParams: !443, identifier: "18d16a67bed2e7c6fe7f13043de6bcd3")
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !447, file: !9, baseType: !445, align: 8, offset: 8, flags: DIFlagPublic)
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !9, baseType: !13, size: 8, align: 8, flags: DIFlagArtificial)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::fmt::Formatter", baseType: !452, size: 64, align: 64, dwarfAddressSpace: 0)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !11, file: !9, size: 512, align: 64, flags: DIFlagPublic, elements: !453, templateParams: !99, identifier: "72ee9bcbceae72f968a6f8314e5300ff")
!453 = !{!454, !455, !456, !457, !469, !470}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !9, baseType: !330, size: 32, align: 32, offset: 416, flags: DIFlagPrivate)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !452, file: !9, baseType: !393, size: 32, align: 32, offset: 384, flags: DIFlagPrivate)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !452, file: !9, baseType: !8, size: 8, align: 8, offset: 448, flags: DIFlagPrivate)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !452, file: !9, baseType: !458, size: 128, align: 64, flags: DIFlagPrivate)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !377, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !459, templateParams: !99, identifier: "dce8f524727688101da7efcdc2ffa0a8")
!459 = !{!460}
!460 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !458, file: !9, size: 128, align: 64, elements: !461, templateParams: !99, identifier: "28f9dbf6d5cb71ffd02b58b85cb052e3", discriminator: !468)
!461 = !{!462, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !460, file: !9, baseType: !463, size: 128, align: 64, extraData: i128 0)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !458, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !99, templateParams: !173, identifier: "4de26a331afe7659db68c6cb8dac39a3")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !460, file: !9, baseType: !465, size: 128, align: 64, extraData: i128 1)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !458, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !466, templateParams: !173, identifier: "200d7caa738ad7af1e05e34bf4b424fd")
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !465, file: !9, baseType: !95, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !9, baseType: !22, size: 64, align: 64, flags: DIFlagArtificial)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !452, file: !9, baseType: !458, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !452, file: !9, baseType: !471, size: 128, align: 64, offset: 256, flags: DIFlagPrivate)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !9, size: 128, align: 64, elements: !472, templateParams: !99, identifier: "f5387f27ee64311b7e7fe4284da72d9")
!472 = !{!473, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !471, file: !9, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64, dwarfAddressSpace: 0)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::fmt::Write", file: !9, align: 8, elements: !99, identifier: "88cb7c2732f8ba65d2eb225a6d22b91d")
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !471, file: !9, baseType: !477, size: 64, align: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 3]", baseType: !478, size: 64, align: 64, dwarfAddressSpace: 0)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 192, align: 64, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 3, lowerBound: 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !420, file: !9, baseType: !95, size: 64, align: 64, offset: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!362, !365}
!484 = !DISubprogram(name: "new_const", linkageName: "_ZN4core3fmt9Arguments9new_const17h842e1ecbcfb4e353E", scope: !362, file: !360, line: 321, type: !482, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !99)
!485 = !{!358}
!486 = !DILocation(line: 321, column: 28, scope: !359, inlinedAt: !487)
!487 = !DILocation(line: 106, column: 38, scope: !488)
!488 = !DILexicalBlockFile(scope: !294, file: !489, discriminator: 0)
!489 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/panic.rs", directory: "", checksumkind: CSK_MD5, checksum: "7db7c9ae020c8c30f72806f85a2ffe20")
!490 = !DILocation(line: 325, column: 9, scope: !359, inlinedAt: !487)
!491 = !{i64 8}
!492 = !DILocation(line: 1609, column: 13, scope: !294)
!493 = !DILocation(line: 1614, column: 13, scope: !335, inlinedAt: !341)
!494 = !DILocation(line: 1628, column: 6, scope: !294)
!495 = distinct !DISubprogram(name: "for_value_raw<usize>", linkageName: "_ZN4core5alloc6layout6Layout13for_value_raw17h46f1a9d431315325E", scope: !497, file: !496, line: 199, type: !506, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !173, declaration: !509, retainedNodes: !510)
!496 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/alloc/layout.rs", directory: "", checksumkind: CSK_MD5, checksum: "36ca1e5f2562092d771f1096d5cbdce8")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Layout", scope: !498, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !500, templateParams: !99, identifier: "a5bcc70e883370fb9c1cd7ca90bc0c5")
!498 = !DINamespace(name: "layout", scope: !499)
!499 = !DINamespace(name: "alloc", scope: !12)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !497, file: !9, baseType: !95, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !497, file: !9, baseType: !503, size: 64, align: 64, flags: DIFlagPrivate)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Alignment", scope: !20, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !504, templateParams: !99, identifier: "9343daabbc157632efc7d20445b0a61d")
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !503, file: !9, baseType: !19, size: 64, align: 64, flags: DIFlagPrivate)
!506 = !DISubroutineType(types: !507)
!507 = !{!497, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!509 = !DISubprogram(name: "for_value_raw<usize>", linkageName: "_ZN4core5alloc6layout6Layout13for_value_raw17h46f1a9d431315325E", scope: !497, file: !496, line: 199, type: !506, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !173)
!510 = !{!511, !512, !514}
!511 = !DILocalVariable(name: "t", arg: 1, scope: !495, file: !496, line: 199, type: !508)
!512 = !DILocalVariable(name: "size", scope: !513, file: !496, line: 201, type: !95, align: 8)
!513 = distinct !DILexicalBlock(scope: !495, file: !496, line: 201, column: 9)
!514 = !DILocalVariable(name: "align", scope: !513, file: !496, line: 201, type: !95, align: 8)
!515 = !DILocation(line: 199, column: 50, scope: !495)
!516 = !DILocalVariable(name: "val", arg: 1, scope: !517, file: !518, line: 394, type: !508)
!517 = distinct !DILexicalBlock(scope: !519, file: !518, line: 394, column: 1)
!518 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/mem/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "bda077d6e282675e77b8cddaeb21296e")
!519 = distinct !DISubprogram(name: "size_of_val_raw<usize>", linkageName: "_ZN4core3mem15size_of_val_raw17hb4d3cb664e2c5b3eE", scope: !520, file: !518, line: 394, type: !521, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !173, retainedNodes: !523)
!520 = !DINamespace(name: "mem", scope: !12)
!521 = !DISubroutineType(types: !522)
!522 = !{!95, !508}
!523 = !{!516}
!524 = !DILocation(line: 394, column: 48, scope: !517, inlinedAt: !525)
!525 = !DILocation(line: 201, column: 39, scope: !495)
!526 = !DILocalVariable(name: "val", arg: 1, scope: !527, file: !518, line: 536, type: !508)
!527 = distinct !DILexicalBlock(scope: !528, file: !518, line: 536, column: 1)
!528 = distinct !DISubprogram(name: "align_of_val_raw<usize>", linkageName: "_ZN4core3mem16align_of_val_raw17hedf57d1097a2cb9dE", scope: !520, file: !518, line: 536, type: !521, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !173, retainedNodes: !529)
!529 = !{!526}
!530 = !DILocation(line: 536, column: 49, scope: !527, inlinedAt: !531)
!531 = !DILocation(line: 201, column: 64, scope: !495)
!532 = !DILocation(line: 396, column: 14, scope: !517, inlinedAt: !525)
!533 = !DILocation(line: 201, column: 14, scope: !513)
!534 = !DILocalVariable(name: "size", arg: 1, scope: !535, file: !496, line: 118, type: !95)
!535 = distinct !DILexicalBlock(scope: !536, file: !496, line: 118, column: 5)
!536 = distinct !DISubprogram(name: "from_size_align_unchecked", linkageName: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h85f9691ce60d6bc6E", scope: !497, file: !496, line: 118, type: !537, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !539, retainedNodes: !540)
!537 = !DISubroutineType(types: !538)
!538 = !{!497, !95, !95}
!539 = !DISubprogram(name: "from_size_align_unchecked", linkageName: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h85f9691ce60d6bc6E", scope: !497, file: !496, line: 118, type: !537, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !99)
!540 = !{!534, !541}
!541 = !DILocalVariable(name: "align", arg: 2, scope: !535, file: !496, line: 118, type: !95)
!542 = !DILocation(line: 118, column: 51, scope: !535, inlinedAt: !543)
!543 = !DILocation(line: 203, column: 18, scope: !513)
!544 = !DILocation(line: 538, column: 14, scope: !527, inlinedAt: !531)
!545 = !DILocation(line: 201, column: 20, scope: !513)
!546 = !DILocation(line: 118, column: 64, scope: !535, inlinedAt: !543)
!547 = !DILocalVariable(name: "align", arg: 1, scope: !548, file: !549, line: 78, type: !95)
!548 = distinct !DILexicalBlock(scope: !550, file: !549, line: 78, column: 5)
!549 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/alignment.rs", directory: "", checksumkind: CSK_MD5, checksum: "b80ec300d834fbe8db2a6215352d9174")
!550 = distinct !DISubprogram(name: "new_unchecked", linkageName: "_ZN4core3ptr9alignment9Alignment13new_unchecked17h58e51ebf1d3ff54cE", scope: !503, file: !549, line: 78, type: !551, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !553, retainedNodes: !554)
!551 = !DISubroutineType(types: !552)
!552 = !{!503, !95}
!553 = !DISubprogram(name: "new_unchecked", linkageName: "_ZN4core3ptr9alignment9Alignment13new_unchecked17h58e51ebf1d3ff54cE", scope: !503, file: !549, line: 78, type: !551, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !99)
!554 = !{!547}
!555 = !DILocation(line: 78, column: 39, scope: !548, inlinedAt: !556)
!556 = !DILocation(line: 120, column: 40, scope: !535, inlinedAt: !543)
!557 = !DILocalVariable(name: "self", arg: 1, scope: !558, file: !313, line: 1281, type: !95)
!558 = !DILexicalBlockFile(scope: !559, file: !313, discriminator: 0)
!559 = distinct !DILexicalBlock(scope: !560, file: !315, line: 2689, column: 9)
!560 = distinct !DISubprogram(name: "is_power_of_two", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h4787de5dc2215a7fE", scope: !317, file: !315, line: 2689, type: !319, scopeLine: 2689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !561)
!561 = !{!557}
!562 = !DILocation(line: 1281, column: 5, scope: !558, inlinedAt: !563)
!563 = !DILocation(line: 81, column: 19, scope: !548, inlinedAt: !556)
!564 = !DILocalVariable(name: "self", arg: 1, scope: !565, file: !313, line: 1281, type: !95)
!565 = !DILexicalBlockFile(scope: !566, file: !313, discriminator: 0)
!566 = distinct !DILexicalBlock(scope: !567, file: !315, line: 106, column: 9)
!567 = distinct !DISubprogram(name: "count_ones", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$10count_ones17h448b009bfc07b2b6E", scope: !317, file: !315, line: 106, type: !328, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !568)
!568 = !{!564}
!569 = !DILocation(line: 1281, column: 5, scope: !565, inlinedAt: !570)
!570 = !DILocation(line: 2690, column: 18, scope: !559, inlinedAt: !563)
!571 = !DILocation(line: 80, column: 9, scope: !548, inlinedAt: !556)
!572 = !DILocation(line: 81, column: 13, scope: !548, inlinedAt: !556)
!573 = !DILocation(line: 120, column: 18, scope: !535, inlinedAt: !543)
!574 = !DILocation(line: 204, column: 6, scope: !495)
!575 = !{i64 1, i64 -9223372036854775807}
!576 = distinct !DISubprogram(name: "exchange_malloc", linkageName: "_ZN5alloc5alloc15exchange_malloc17h6cc58ed5800e9023E", scope: !578, file: !577, line: 329, type: !580, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !582)
!577 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/alloc/src/alloc.rs", directory: "", checksumkind: CSK_MD5, checksum: "49a4d367bb966a4a848e9c9de6233d54")
!578 = !DINamespace(name: "alloc", scope: !579)
!579 = !DINamespace(name: "alloc", scope: null)
!580 = !DISubroutineType(types: !581)
!581 = !{!270, !95, !95}
!582 = !{!583, !584, !585, !587}
!583 = !DILocalVariable(name: "size", arg: 1, scope: !576, file: !577, line: 329, type: !95)
!584 = !DILocalVariable(name: "align", arg: 2, scope: !576, file: !577, line: 329, type: !95)
!585 = !DILocalVariable(name: "layout", scope: !586, file: !577, line: 330, type: !497, align: 8)
!586 = distinct !DILexicalBlock(scope: !576, file: !577, line: 330, column: 5)
!587 = !DILocalVariable(name: "ptr", scope: !588, file: !577, line: 332, type: !589, align: 8)
!588 = distinct !DILexicalBlock(scope: !586, file: !577, line: 332, column: 9)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<[u8]>", scope: !244, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !590, templateParams: !145, identifier: "9da853595cac600619c58ac6475a3007")
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !589, file: !9, baseType: !592, size: 128, align: 64, flags: DIFlagPrivate)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [u8]", file: !9, size: 128, align: 64, elements: !593, templateParams: !99, identifier: "a329dffc2f36de2e98a77091932cf429")
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !592, file: !9, baseType: !372, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !592, file: !9, baseType: !95, size: 64, align: 64, offset: 64)
!596 = !DILocation(line: 241, column: 17, scope: !597, inlinedAt: !624)
!597 = distinct !DILexicalBlock(scope: !598, file: !577, line: 241, column: 5)
!598 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hda67d4e8c6f51628E", scope: !599, file: !577, line: 241, type: !600, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !621)
!599 = !DINamespace(name: "{impl#1}", scope: !578)
!600 = !DISubroutineType(types: !601)
!601 = !{!602, !619, !497}
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", scope: !435, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !603, templateParams: !99, identifier: "4ecb6adbf97aec934e22c3aaabe28582")
!603 = !{!604}
!604 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !602, file: !9, size: 128, align: 64, elements: !605, templateParams: !99, identifier: "b7ceb41d9f05b83555c9e0ff611b9e24", discriminator: !618)
!605 = !{!606, !614}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !604, file: !9, baseType: !607, size: 128, align: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !602, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !608, templateParams: !610, identifier: "6e0ad4292647315c1864a3e2d540c128")
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !607, file: !9, baseType: !589, size: 128, align: 64, flags: DIFlagPublic)
!610 = !{!611, !612}
!611 = !DITemplateTypeParameter(name: "T", type: !589)
!612 = !DITemplateTypeParameter(name: "E", type: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AllocError", scope: !499, file: !9, align: 8, flags: DIFlagPublic, elements: !99, identifier: "6c9115576ec1981d8c07708b3e787b44")
!614 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !604, file: !9, baseType: !615, size: 128, align: 64, extraData: i128 0)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !602, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !616, templateParams: !610, identifier: "82c3b07cc9665894bca1744df12fdae4")
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !615, file: !9, baseType: !613, align: 8, flags: DIFlagPublic)
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !9, baseType: !22, size: 64, align: 64, flags: DIFlagArtificial)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::alloc::Global", baseType: !620, size: 64, align: 64, dwarfAddressSpace: 0)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !578, file: !9, align: 8, flags: DIFlagPublic, elements: !99, identifier: "b0f9fdb15ba1308d15359ef13b177060")
!621 = !{!622, !623}
!622 = !DILocalVariable(name: "self", scope: !597, file: !577, line: 241, type: !619, align: 8)
!623 = !DILocalVariable(name: "layout", arg: 2, scope: !597, file: !577, line: 241, type: !497)
!624 = !DILocation(line: 331, column: 18, scope: !586)
!625 = !DILocation(line: 329, column: 27, scope: !576)
!626 = !DILocalVariable(name: "size", arg: 1, scope: !627, file: !496, line: 118, type: !95)
!627 = distinct !DILexicalBlock(scope: !628, file: !496, line: 118, column: 5)
!628 = distinct !DISubprogram(name: "from_size_align_unchecked", linkageName: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h85f9691ce60d6bc6E", scope: !497, file: !496, line: 118, type: !537, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !539, retainedNodes: !629)
!629 = !{!626, !630}
!630 = !DILocalVariable(name: "align", arg: 2, scope: !627, file: !496, line: 118, type: !95)
!631 = !DILocation(line: 118, column: 51, scope: !627, inlinedAt: !632)
!632 = !DILocation(line: 330, column: 27, scope: !576)
!633 = !DILocation(line: 329, column: 40, scope: !576)
!634 = !DILocation(line: 118, column: 64, scope: !627, inlinedAt: !632)
!635 = !DILocalVariable(name: "align", arg: 1, scope: !636, file: !549, line: 78, type: !95)
!636 = distinct !DILexicalBlock(scope: !637, file: !549, line: 78, column: 5)
!637 = distinct !DISubprogram(name: "new_unchecked", linkageName: "_ZN4core3ptr9alignment9Alignment13new_unchecked17h58e51ebf1d3ff54cE", scope: !503, file: !549, line: 78, type: !551, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !553, retainedNodes: !638)
!638 = !{!635}
!639 = !DILocation(line: 78, column: 39, scope: !636, inlinedAt: !640)
!640 = !DILocation(line: 120, column: 40, scope: !627, inlinedAt: !632)
!641 = !DILocalVariable(name: "self", arg: 1, scope: !642, file: !313, line: 1281, type: !95)
!642 = !DILexicalBlockFile(scope: !643, file: !313, discriminator: 0)
!643 = distinct !DILexicalBlock(scope: !644, file: !315, line: 2689, column: 9)
!644 = distinct !DISubprogram(name: "is_power_of_two", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h4787de5dc2215a7fE", scope: !317, file: !315, line: 2689, type: !319, scopeLine: 2689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !645)
!645 = !{!641}
!646 = !DILocation(line: 1281, column: 5, scope: !642, inlinedAt: !647)
!647 = !DILocation(line: 81, column: 19, scope: !636, inlinedAt: !640)
!648 = !DILocalVariable(name: "self", arg: 1, scope: !649, file: !313, line: 1281, type: !95)
!649 = !DILexicalBlockFile(scope: !650, file: !313, discriminator: 0)
!650 = distinct !DILexicalBlock(scope: !651, file: !315, line: 106, column: 9)
!651 = distinct !DISubprogram(name: "count_ones", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$10count_ones17h448b009bfc07b2b6E", scope: !317, file: !315, line: 106, type: !328, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !652)
!652 = !{!648}
!653 = !DILocation(line: 1281, column: 5, scope: !649, inlinedAt: !654)
!654 = !DILocation(line: 2690, column: 18, scope: !643, inlinedAt: !647)
!655 = !DILocation(line: 330, column: 9, scope: !586)
!656 = !DILocation(line: 241, column: 24, scope: !597, inlinedAt: !624)
!657 = !DILocalVariable(name: "self", arg: 1, scope: !658, file: !262, line: 349, type: !660)
!658 = distinct !DILexicalBlock(scope: !659, file: !262, line: 349, column: 5)
!659 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0b159d512463d9b7E", scope: !660, file: !262, line: 349, type: !663, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !665, retainedNodes: !666)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !244, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !661, templateParams: !145, identifier: "84432925878acabd78ebba007cca0df4")
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !660, file: !9, baseType: !135, size: 64, align: 64, flags: DIFlagPrivate)
!663 = !DISubroutineType(types: !664)
!664 = !{!270, !660}
!665 = !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0b159d512463d9b7E", scope: !660, file: !262, line: 349, type: !663, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!666 = !{!657}
!667 = !DILocation(line: 349, column: 25, scope: !658, inlinedAt: !668)
!668 = !DILocation(line: 1613, column: 32, scope: !669, inlinedAt: !676)
!669 = distinct !DILexicalBlock(scope: !670, file: !262, line: 1612, column: 5)
!670 = distinct !DISubprogram(name: "as_mut_ptr<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hec2db6f9c5e0e61cE", scope: !589, file: !262, line: 1612, type: !671, scopeLine: 1612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !673, retainedNodes: !674)
!671 = !DISubroutineType(types: !672)
!672 = !{!270, !589}
!673 = !DISubprogram(name: "as_mut_ptr<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hec2db6f9c5e0e61cE", scope: !589, file: !262, line: 1612, type: !671, scopeLine: 1612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!674 = !{!675}
!675 = !DILocalVariable(name: "self", arg: 1, scope: !669, file: !262, line: 1612, type: !589)
!676 = !DILocation(line: 332, column: 24, scope: !588)
!677 = !DILocation(line: 80, column: 9, scope: !636, inlinedAt: !640)
!678 = !DILocation(line: 81, column: 13, scope: !636, inlinedAt: !640)
!679 = !DILocation(line: 120, column: 18, scope: !627, inlinedAt: !632)
!680 = !DILocation(line: 242, column: 9, scope: !597, inlinedAt: !624)
!681 = !DILocation(line: 331, column: 11, scope: !586)
!682 = !DILocation(line: 331, column: 5, scope: !586)
!683 = !DILocation(line: 332, column: 12, scope: !586)
!684 = !DILocation(line: 332, column: 12, scope: !588)
!685 = !DILocation(line: 1612, column: 29, scope: !669, inlinedAt: !676)
!686 = !DILocalVariable(name: "self", arg: 1, scope: !687, file: !262, line: 1592, type: !589)
!687 = distinct !DILexicalBlock(scope: !688, file: !262, line: 1592, column: 5)
!688 = distinct !DISubprogram(name: "as_non_null_ptr<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hc8e82f157bbac367E", scope: !589, file: !262, line: 1592, type: !689, scopeLine: 1592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !691, retainedNodes: !692)
!689 = !DISubroutineType(types: !690)
!690 = !{!660, !589}
!691 = !DISubprogram(name: "as_non_null_ptr<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hc8e82f157bbac367E", scope: !589, file: !262, line: 1592, type: !689, scopeLine: 1592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!692 = !{!686}
!693 = !DILocation(line: 1592, column: 34, scope: !687, inlinedAt: !694)
!694 = !DILocation(line: 1613, column: 14, scope: !669, inlinedAt: !676)
!695 = !DILocalVariable(name: "self", arg: 1, scope: !696, file: !262, line: 473, type: !589)
!696 = distinct !DILexicalBlock(scope: !697, file: !262, line: 473, column: 5)
!697 = distinct !DISubprogram(name: "cast<[u8], u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h844fdf805c69541eE", scope: !589, file: !262, line: 473, type: !689, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !699, declaration: !698, retainedNodes: !701)
!698 = !DISubprogram(name: "cast<[u8], u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h844fdf805c69541eE", scope: !589, file: !262, line: 473, type: !689, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !699)
!699 = !{!146, !700}
!700 = !DITemplateTypeParameter(name: "U", type: !13)
!701 = !{!695}
!702 = !DILocation(line: 473, column: 26, scope: !696, inlinedAt: !703)
!703 = !DILocation(line: 1593, column: 14, scope: !687, inlinedAt: !694)
!704 = !DILocalVariable(name: "self", arg: 1, scope: !705, file: !262, line: 349, type: !589)
!705 = distinct !DILexicalBlock(scope: !706, file: !262, line: 349, column: 5)
!706 = distinct !DISubprogram(name: "as_ptr<[u8]>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd0028176c09248daE", scope: !589, file: !262, line: 349, type: !707, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !713, retainedNodes: !714)
!707 = !DISubroutineType(types: !708)
!708 = !{!709, !589}
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [u8]", file: !9, size: 128, align: 64, elements: !710, templateParams: !99, identifier: "bd558e033735f213c244d7572860f8f0")
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !709, file: !9, baseType: !372, size: 64, align: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !709, file: !9, baseType: !95, size: 64, align: 64, offset: 64)
!713 = !DISubprogram(name: "as_ptr<[u8]>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd0028176c09248daE", scope: !589, file: !262, line: 349, type: !707, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!714 = !{!704}
!715 = !DILocation(line: 349, column: 25, scope: !705, inlinedAt: !716)
!716 = !DILocation(line: 475, column: 42, scope: !696, inlinedAt: !703)
!717 = !DILocation(line: 475, column: 18, scope: !696, inlinedAt: !703)
!718 = !DILocation(line: 335, column: 2, scope: !576)
!719 = !DILocation(line: 333, column: 19, scope: !586)
!720 = distinct !DISubprogram(name: "alloc", linkageName: "_ZN5alloc5alloc5alloc17heba3b7912793fb2aE", scope: !578, file: !577, line: 93, type: !721, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{!270, !497}
!723 = !{!724}
!724 = !DILocalVariable(name: "layout", arg: 1, scope: !720, file: !577, line: 93, type: !497)
!725 = !DILocation(line: 1626, column: 32, scope: !726, inlinedAt: !732)
!726 = distinct !DILexicalBlock(scope: !727, file: !113, line: 1626, column: 1)
!727 = distinct !DISubprogram(name: "read_volatile<u8>", linkageName: "_ZN4core3ptr13read_volatile17h991b93a23683a1e9E", scope: !21, file: !113, line: 1626, type: !728, scopeLine: 1626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!13, !135}
!730 = !{!731}
!731 = !DILocalVariable(name: "src", scope: !726, file: !113, line: 1626, type: !135, align: 8)
!732 = !DILocation(line: 97, column: 9, scope: !720)
!733 = !DILocation(line: 93, column: 21, scope: !720)
!734 = !DILocation(line: 1629, column: 9, scope: !726, inlinedAt: !732)
!735 = !DILocation(line: 1636, column: 9, scope: !726, inlinedAt: !732)
!736 = !DILocation(line: 99, column: 22, scope: !720)
!737 = !DILocalVariable(name: "self", arg: 1, scope: !738, file: !496, line: 128, type: !742)
!738 = distinct !DILexicalBlock(scope: !739, file: !496, line: 128, column: 5)
!739 = distinct !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17hfc82eddfbfc900d3E", scope: !497, file: !496, line: 128, type: !740, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !743, retainedNodes: !744)
!740 = !DISubroutineType(types: !741)
!741 = !{!95, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::alloc::layout::Layout", baseType: !497, size: 64, align: 64, dwarfAddressSpace: 0)
!743 = !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17hfc82eddfbfc900d3E", scope: !497, file: !496, line: 128, type: !740, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !99)
!744 = !{!737}
!745 = !DILocation(line: 128, column: 23, scope: !738, inlinedAt: !746)
!746 = !DILocation(line: 99, column: 29, scope: !720)
!747 = !DILocation(line: 129, column: 9, scope: !738, inlinedAt: !746)
!748 = !DILocation(line: 99, column: 37, scope: !720)
!749 = !DILocalVariable(name: "self", arg: 1, scope: !750, file: !496, line: 141, type: !742)
!750 = distinct !DILexicalBlock(scope: !751, file: !496, line: 141, column: 5)
!751 = distinct !DISubprogram(name: "align", linkageName: "_ZN4core5alloc6layout6Layout5align17h4cd2c00345b05cbcE", scope: !497, file: !496, line: 141, type: !740, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !752, retainedNodes: !753)
!752 = !DISubprogram(name: "align", linkageName: "_ZN4core5alloc6layout6Layout5align17h4cd2c00345b05cbcE", scope: !497, file: !496, line: 141, type: !740, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !99)
!753 = !{!749}
!754 = !DILocation(line: 141, column: 24, scope: !750, inlinedAt: !755)
!755 = !DILocation(line: 99, column: 44, scope: !720)
!756 = !DILocation(line: 142, column: 9, scope: !750, inlinedAt: !755)
!757 = !DILocalVariable(name: "self", arg: 1, scope: !758, file: !549, line: 94, type: !503)
!758 = distinct !DILexicalBlock(scope: !759, file: !549, line: 94, column: 5)
!759 = distinct !DISubprogram(name: "as_usize", linkageName: "_ZN4core3ptr9alignment9Alignment8as_usize17hc59485a27dd9ceb1E", scope: !503, file: !549, line: 94, type: !760, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !762, retainedNodes: !763)
!760 = !DISubroutineType(types: !761)
!761 = !{!95, !503}
!762 = !DISubprogram(name: "as_usize", linkageName: "_ZN4core3ptr9alignment9Alignment8as_usize17hc59485a27dd9ceb1E", scope: !503, file: !549, line: 94, type: !760, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !99)
!763 = !{!757}
!764 = !DILocation(line: 94, column: 27, scope: !758, inlinedAt: !765)
!765 = !DILocation(line: 142, column: 20, scope: !750, inlinedAt: !755)
!766 = !DILocation(line: 95, column: 9, scope: !758, inlinedAt: !765)
!767 = !DILocation(line: 99, column: 9, scope: !720)
!768 = !DILocation(line: 101, column: 2, scope: !720)
!769 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_ZN5alloc5alloc6Global10alloc_impl17h67f63f2943dd1d74E", scope: !620, file: !577, line: 177, type: !770, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !772, retainedNodes: !773)
!770 = !DISubroutineType(types: !771)
!771 = !{!602, !619, !497, !107}
!772 = !DISubprogram(name: "alloc_impl", linkageName: "_ZN5alloc5alloc6Global10alloc_impl17h67f63f2943dd1d74E", scope: !620, file: !577, line: 177, type: !770, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !99)
!773 = !{!774, !775, !776, !777, !779, !781, !783, !803}
!774 = !DILocalVariable(name: "self", arg: 1, scope: !769, file: !577, line: 177, type: !619)
!775 = !DILocalVariable(name: "layout", arg: 2, scope: !769, file: !577, line: 177, type: !497)
!776 = !DILocalVariable(name: "zeroed", arg: 3, scope: !769, file: !577, line: 177, type: !107)
!777 = !DILocalVariable(name: "size", scope: !778, file: !577, line: 181, type: !95, align: 8)
!778 = distinct !DILexicalBlock(scope: !769, file: !577, line: 181, column: 13)
!779 = !DILocalVariable(name: "raw_ptr", scope: !780, file: !577, line: 182, type: !270, align: 8)
!780 = distinct !DILexicalBlock(scope: !778, file: !577, line: 182, column: 17)
!781 = !DILocalVariable(name: "ptr", scope: !782, file: !577, line: 183, type: !660, align: 8)
!782 = distinct !DILexicalBlock(scope: !780, file: !577, line: 183, column: 17)
!783 = !DILocalVariable(name: "residual", scope: !784, file: !577, line: 183, type: !785, align: 1)
!784 = distinct !DILexicalBlock(scope: !780, file: !577, line: 183, column: 66)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, core::alloc::AllocError>", scope: !435, file: !9, align: 8, flags: DIFlagPublic, elements: !786, templateParams: !99, identifier: "e23810381de2fd6243badeedcfe23ff9")
!786 = !{!787}
!787 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !785, file: !9, align: 8, elements: !788, templateParams: !99, identifier: "a335f721172b8fbdbe50d2b31c2b468a")
!788 = !{!789, !799}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !787, file: !9, baseType: !790, align: 8)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !785, file: !9, align: 8, flags: DIFlagPublic, elements: !791, templateParams: !797, identifier: "fb2401b310c0e9b34f6a5f04f43ee959")
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !790, file: !9, baseType: !793, align: 8, flags: DIFlagPublic)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Infallible", scope: !794, file: !9, align: 8, flags: DIFlagPublic, elements: !795, templateParams: !99, identifier: "1841c3a61d4e1b7262b6c619c23f2727")
!794 = !DINamespace(name: "convert", scope: !12)
!795 = !{!796}
!796 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !793, file: !9, align: 8, elements: !99, identifier: "57ac860d900251b0522f932def6e5079")
!797 = !{!798, !612}
!798 = !DITemplateTypeParameter(name: "T", type: !793)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !787, file: !9, baseType: !800, align: 8)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !785, file: !9, align: 8, flags: DIFlagPublic, elements: !801, templateParams: !797, identifier: "a09590d8c2587e85dafe3ff5c0979a84")
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !800, file: !9, baseType: !613, align: 8, flags: DIFlagPublic)
!803 = !DILocalVariable(name: "val", scope: !804, file: !577, line: 183, type: !660, align: 8)
!804 = distinct !DILexicalBlock(scope: !780, file: !577, line: 183, column: 27)
!805 = !DILocation(line: 183, column: 66, scope: !784)
!806 = !DILocation(line: 1548, column: 57, scope: !807, inlinedAt: !818)
!807 = distinct !DILexicalBlock(scope: !808, file: !262, line: 1548, column: 5)
!808 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hb4784f0655d5129eE", scope: !589, file: !262, line: 1548, type: !809, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !811, retainedNodes: !812)
!809 = !DISubroutineType(types: !810)
!810 = !{!589, !660, !95}
!811 = !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hb4784f0655d5129eE", scope: !589, file: !262, line: 1548, type: !809, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!812 = !{!813, !814, !815, !817}
!813 = !DILocalVariable(name: "data", arg: 1, scope: !807, file: !262, line: 1548, type: !660)
!814 = !DILocalVariable(name: "len", scope: !807, file: !262, line: 1548, type: !95, align: 8)
!815 = !DILocalVariable(name: "data", arg: 1, scope: !816, file: !262, line: 1548, type: !660)
!816 = distinct !DILexicalBlock(scope: !808, file: !262, line: 1548, column: 5)
!817 = !DILocalVariable(name: "len", arg: 2, scope: !816, file: !262, line: 1548, type: !95)
!818 = !DILocation(line: 179, column: 21, scope: !769)
!819 = !DILocation(line: 833, column: 56, scope: !820, inlinedAt: !830)
!820 = distinct !DILexicalBlock(scope: !821, file: !113, line: 833, column: 1)
!821 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<u8>", linkageName: "_ZN4core3ptr24slice_from_raw_parts_mut17ha2995c3fde59aeb6E", scope: !21, file: !113, line: 833, type: !822, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{!709, !270, !95}
!824 = !{!825, !826, !827, !829}
!825 = !DILocalVariable(name: "data", arg: 1, scope: !820, file: !113, line: 833, type: !270)
!826 = !DILocalVariable(name: "len", scope: !820, file: !113, line: 833, type: !95, align: 8)
!827 = !DILocalVariable(name: "data", arg: 1, scope: !828, file: !113, line: 833, type: !270)
!828 = distinct !DILexicalBlock(scope: !821, file: !113, line: 833, column: 1)
!829 = !DILocalVariable(name: "len", arg: 2, scope: !828, file: !113, line: 833, type: !95)
!830 = !DILocation(line: 1550, column: 38, scope: !807, inlinedAt: !818)
!831 = !DILocation(line: 130, column: 5, scope: !832, inlinedAt: !844)
!832 = distinct !DILexicalBlock(scope: !834, file: !833, line: 128, column: 1)
!833 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/metadata.rs", directory: "", checksumkind: CSK_MD5, checksum: "3e5f46ed28de51d38cc460b6ffb611d6")
!834 = distinct !DISubprogram(name: "from_raw_parts_mut<[u8]>", linkageName: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2345ea98dadc47baE", scope: !835, file: !833, line: 128, type: !836, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !838)
!835 = !DINamespace(name: "metadata", scope: !21)
!836 = !DISubroutineType(types: !837)
!837 = !{!709, !184, !95}
!838 = !{!839, !840, !841, !843}
!839 = !DILocalVariable(name: "data_pointer", arg: 1, scope: !832, file: !833, line: 129, type: !184)
!840 = !DILocalVariable(name: "metadata", scope: !832, file: !833, line: 130, type: !95, align: 8)
!841 = !DILocalVariable(name: "data_pointer", arg: 1, scope: !842, file: !833, line: 129, type: !184)
!842 = distinct !DILexicalBlock(scope: !834, file: !833, line: 128, column: 1)
!843 = !DILocalVariable(name: "metadata", arg: 2, scope: !842, file: !833, line: 130, type: !95)
!844 = !DILocation(line: 834, column: 5, scope: !820, inlinedAt: !830)
!845 = !DILocalVariable(name: "err", scope: !846, file: !847, line: 1206, type: !613, align: 1)
!846 = distinct !DILexicalBlock(scope: !848, file: !847, line: 1206, column: 5)
!847 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/option.rs", directory: "", checksumkind: CSK_MD5, checksum: "290dd9078744531e3e1c26de62cd5c06")
!848 = distinct !DISubprogram(name: "ok_or<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_ZN4core6option15Option$LT$T$GT$5ok_or17hf4807e1529d94608E", scope: !849, file: !847, line: 1206, type: !862, scopeLine: 1206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !872, declaration: !878, retainedNodes: !879)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ptr::non_null::NonNull<u8>>", scope: !377, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !850, templateParams: !99, identifier: "cfb52c17d3165797d927d89cc7d7049f")
!850 = !{!851}
!851 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !849, file: !9, size: 64, align: 64, elements: !852, templateParams: !99, identifier: "3b8e70c4a59418dda58d3970d4829f6b", discriminator: !861)
!852 = !{!853, !857}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !851, file: !9, baseType: !854, size: 64, align: 64, extraData: i128 0)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !849, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !99, templateParams: !855, identifier: "91c56495ea416624e766fca9f0e95a5c")
!855 = !{!856}
!856 = !DITemplateTypeParameter(name: "T", type: !660)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !851, file: !9, baseType: !858, size: 64, align: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !849, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !859, templateParams: !855, identifier: "e2966d162a59682b22d7743dc5522618")
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !858, file: !9, baseType: !660, size: 64, align: 64, flags: DIFlagPublic)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !9, baseType: !22, size: 64, align: 64, flags: DIFlagArtificial)
!862 = !DISubroutineType(types: !863)
!863 = !{!864, !849, !613}
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", scope: !435, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !865, templateParams: !99, identifier: "3174feb1d85c319569ff2ea45118c28")
!865 = !{!866}
!866 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !864, file: !9, size: 64, align: 64, elements: !867, templateParams: !99, identifier: "36c57dc0eab8ebc0fbeebcb20ff6abb4", discriminator: !877)
!867 = !{!868, !873}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !866, file: !9, baseType: !869, size: 64, align: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !864, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !870, templateParams: !872, identifier: "331b0fbe5b52a5a7d8e560dfca165cf2")
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !869, file: !9, baseType: !660, size: 64, align: 64, flags: DIFlagPublic)
!872 = !{!856, !612}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !866, file: !9, baseType: !874, size: 64, align: 64, extraData: i128 0)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !864, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !875, templateParams: !872, identifier: "bdbb3199d750a4313964331d1c3e9d2f")
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !874, file: !9, baseType: !613, align: 8, flags: DIFlagPublic)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !9, baseType: !22, size: 64, align: 64, flags: DIFlagArtificial)
!878 = !DISubprogram(name: "ok_or<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_ZN4core6option15Option$LT$T$GT$5ok_or17hf4807e1529d94608E", scope: !849, file: !847, line: 1206, type: !862, scopeLine: 1206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !872)
!879 = !{!880, !845, !881}
!880 = !DILocalVariable(name: "self", arg: 1, scope: !846, file: !847, line: 1206, type: !849)
!881 = !DILocalVariable(name: "v", scope: !882, file: !847, line: 1208, type: !660, align: 8)
!882 = distinct !DILexicalBlock(scope: !846, file: !847, line: 1208, column: 13)
!883 = !DILocation(line: 1206, column: 27, scope: !846, inlinedAt: !884)
!884 = !DILocation(line: 183, column: 49, scope: !780)
!885 = !DILocalVariable(name: "e", scope: !886, file: !887, line: 1953, type: !613, align: 1)
!886 = distinct !DILexicalBlock(scope: !888, file: !887, line: 1953, column: 13)
!887 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/result.rs", directory: "", checksumkind: CSK_MD5, checksum: "96c793a7caa821b2d8ecbbb7303607a6")
!888 = distinct !DILexicalBlock(scope: !889, file: !887, line: 1950, column: 5)
!889 = distinct !DISubprogram(name: "branch<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb3993ca5f3d08052E", scope: !890, file: !887, line: 1950, type: !891, scopeLine: 1950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !872, retainedNodes: !911)
!890 = !DINamespace(name: "{impl#26}", scope: !435)
!891 = !DISubroutineType(types: !892)
!892 = !{!893, !864}
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>", scope: !894, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !896, templateParams: !99, identifier: "bfd9bc8d509af23028440323d3daf115")
!894 = !DINamespace(name: "control_flow", scope: !895)
!895 = !DINamespace(name: "ops", scope: !12)
!896 = !{!897}
!897 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !893, file: !9, size: 64, align: 64, elements: !898, templateParams: !99, identifier: "6cb9289859f041e2d4f75522d019f252", discriminator: !910)
!898 = !{!899, !906}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !897, file: !9, baseType: !900, size: 64, align: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !893, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !901, templateParams: !903, identifier: "cf9f2405a8ac3e01148e407fa3744041")
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !900, file: !9, baseType: !660, size: 64, align: 64, flags: DIFlagPublic)
!903 = !{!904, !905}
!904 = !DITemplateTypeParameter(name: "B", type: !785)
!905 = !DITemplateTypeParameter(name: "C", type: !660)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !897, file: !9, baseType: !907, size: 64, align: 64, extraData: i128 0)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !893, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !908, templateParams: !903, identifier: "7fd59b9d057b21a1f6cd5dd07db77596")
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !907, file: !9, baseType: !785, align: 8, flags: DIFlagPublic)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !9, baseType: !22, size: 64, align: 64, flags: DIFlagArtificial)
!911 = !{!912, !913, !885}
!912 = !DILocalVariable(name: "self", arg: 1, scope: !888, file: !887, line: 1950, type: !864)
!913 = !DILocalVariable(name: "v", scope: !914, file: !887, line: 1952, type: !660, align: 8)
!914 = distinct !DILexicalBlock(scope: !888, file: !887, line: 1952, column: 13)
!915 = !DILocation(line: 1953, column: 17, scope: !886, inlinedAt: !916)
!916 = !DILocation(line: 183, column: 27, scope: !780)
!917 = !DILocalVariable(name: "residual", scope: !918, file: !887, line: 1962, type: !785, align: 1)
!918 = distinct !DILexicalBlock(scope: !919, file: !887, line: 1962, column: 5)
!919 = distinct !DISubprogram(name: "from_residual<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError, core::alloc::AllocError>", linkageName: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hda9cbbfc6cc40af0E", scope: !920, file: !887, line: 1962, type: !921, scopeLine: 1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !934, retainedNodes: !931)
!920 = !DINamespace(name: "{impl#27}", scope: !435)
!921 = !DISubroutineType(types: !922)
!922 = !{!602, !785, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !924, size: 64, align: 64, dwarfAddressSpace: 0)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !925, file: !9, size: 192, align: 64, flags: DIFlagPublic, elements: !927, templateParams: !99, identifier: "975e5a8fcbe9b69a3218ee22a5c53a48")
!925 = !DINamespace(name: "location", scope: !926)
!926 = !DINamespace(name: "panic", scope: !12)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !924, file: !9, baseType: !369, size: 128, align: 64, flags: DIFlagPrivate)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !924, file: !9, baseType: !330, size: 32, align: 32, offset: 128, flags: DIFlagPrivate)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !924, file: !9, baseType: !330, size: 32, align: 32, offset: 160, flags: DIFlagPrivate)
!931 = !{!917, !932}
!932 = !DILocalVariable(name: "e", scope: !933, file: !887, line: 1964, type: !613, align: 1)
!933 = distinct !DILexicalBlock(scope: !918, file: !887, line: 1964, column: 13)
!934 = !{!611, !612, !935}
!935 = !DITemplateTypeParameter(name: "F", type: !613)
!936 = !DILocation(line: 1962, column: 22, scope: !918, inlinedAt: !937)
!937 = !DILocation(line: 183, column: 27, scope: !784)
!938 = !DILocation(line: 1964, column: 17, scope: !933, inlinedAt: !937)
!939 = !DILocalVariable(name: "t", scope: !940, file: !941, line: 768, type: !613, align: 1)
!940 = distinct !DILexicalBlock(scope: !942, file: !941, line: 768, column: 5)
!941 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/convert/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "f336ca7f5b57e62a28aac23c8def4b5d")
!942 = distinct !DISubprogram(name: "from<core::alloc::AllocError>", linkageName: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3489515c86dc3337E", scope: !943, file: !941, line: 768, type: !944, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !947, retainedNodes: !946)
!943 = !DINamespace(name: "{impl#4}", scope: !794)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !613}
!946 = !{!939}
!947 = !{!948}
!948 = !DITemplateTypeParameter(name: "T", type: !613)
!949 = !DILocation(line: 768, column: 13, scope: !940, inlinedAt: !950)
!950 = !DILocation(line: 1964, column: 27, scope: !933, inlinedAt: !937)
!951 = !DILocation(line: 177, column: 19, scope: !769)
!952 = !DILocation(line: 177, column: 26, scope: !769)
!953 = !DILocation(line: 177, column: 42, scope: !769)
!954 = !DILocation(line: 1548, column: 39, scope: !807, inlinedAt: !818)
!955 = !DILocalVariable(name: "self", arg: 1, scope: !956, file: !262, line: 349, type: !660)
!956 = distinct !DILexicalBlock(scope: !957, file: !262, line: 349, column: 5)
!957 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0b159d512463d9b7E", scope: !660, file: !262, line: 349, type: !663, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !665, retainedNodes: !958)
!958 = !{!955, !959}
!959 = !DILocalVariable(name: "self", arg: 1, scope: !960, file: !262, line: 349, type: !660)
!960 = distinct !DILexicalBlock(scope: !957, file: !262, line: 349, column: 5)
!961 = !DILocation(line: 349, column: 25, scope: !956, inlinedAt: !962)
!962 = !DILocation(line: 1550, column: 75, scope: !807, inlinedAt: !818)
!963 = !DILocation(line: 182, column: 21, scope: !780)
!964 = !DILocalVariable(name: "layout", arg: 1, scope: !965, file: !577, line: 170, type: !497)
!965 = distinct !DILexicalBlock(scope: !966, file: !577, line: 170, column: 1)
!966 = distinct !DISubprogram(name: "alloc_zeroed", linkageName: "_ZN5alloc5alloc12alloc_zeroed17h39638e8ca6439fd3E", scope: !578, file: !577, line: 170, type: !721, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !967)
!967 = !{!964}
!968 = !DILocation(line: 170, column: 28, scope: !965, inlinedAt: !969)
!969 = !DILocation(line: 182, column: 43, scope: !778)
!970 = !DILocation(line: 1950, column: 15, scope: !888, inlinedAt: !916)
!971 = !DILocation(line: 1206, column: 21, scope: !846, inlinedAt: !884)
!972 = !DILocalVariable(name: "ptr", arg: 1, scope: !973, file: !262, line: 217, type: !709)
!973 = distinct !DILexicalBlock(scope: !974, file: !262, line: 217, column: 5)
!974 = distinct !DISubprogram(name: "new_unchecked<[u8]>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h844607a5f25d3e82E", scope: !589, file: !262, line: 217, type: !975, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !977, retainedNodes: !978)
!975 = !DISubroutineType(types: !976)
!976 = !{!589, !709}
!977 = !DISubprogram(name: "new_unchecked<[u8]>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h844607a5f25d3e82E", scope: !589, file: !262, line: 217, type: !975, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!978 = !{!972, !979}
!979 = !DILocalVariable(name: "ptr", arg: 1, scope: !980, file: !262, line: 217, type: !709)
!980 = distinct !DILexicalBlock(scope: !974, file: !262, line: 217, column: 5)
!981 = !DILocation(line: 217, column: 39, scope: !973, inlinedAt: !982)
!982 = !DILocation(line: 1550, column: 18, scope: !807, inlinedAt: !818)
!983 = !DILocation(line: 833, column: 42, scope: !820, inlinedAt: !830)
!984 = !DILocalVariable(name: "self", arg: 1, scope: !985, file: !252, line: 60, type: !270)
!985 = distinct !DILexicalBlock(scope: !986, file: !252, line: 60, column: 5)
!986 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17h0c0641e4bd39a6f4E", scope: !254, file: !252, line: 60, type: !285, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !155, retainedNodes: !987)
!987 = !{!984, !988, !990}
!988 = !DILocalVariable(name: "self", arg: 1, scope: !989, file: !252, line: 60, type: !270)
!989 = distinct !DILexicalBlock(scope: !986, file: !252, line: 60, column: 5)
!990 = !DILocalVariable(name: "self", arg: 1, scope: !991, file: !252, line: 60, type: !270)
!991 = distinct !DILexicalBlock(scope: !986, file: !252, line: 60, column: 5)
!992 = !DILocation(line: 60, column: 26, scope: !985, inlinedAt: !993)
!993 = !DILocation(line: 834, column: 29, scope: !820, inlinedAt: !830)
!994 = !DILocation(line: 129, column: 5, scope: !832, inlinedAt: !844)
!995 = !DILocation(line: 178, column: 15, scope: !769)
!996 = !DILocalVariable(name: "self", arg: 1, scope: !997, file: !496, line: 128, type: !742)
!997 = distinct !DILexicalBlock(scope: !998, file: !496, line: 128, column: 5)
!998 = distinct !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17hfc82eddfbfc900d3E", scope: !497, file: !496, line: 128, type: !740, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !743, retainedNodes: !999)
!999 = !{!996, !1000}
!1000 = !DILocalVariable(name: "self", arg: 1, scope: !1001, file: !496, line: 128, type: !742)
!1001 = distinct !DILexicalBlock(scope: !998, file: !496, line: 128, column: 5)
!1002 = !DILocation(line: 128, column: 23, scope: !997, inlinedAt: !1003)
!1003 = !DILocation(line: 178, column: 22, scope: !769)
!1004 = !DILocation(line: 129, column: 9, scope: !997, inlinedAt: !1003)
!1005 = !DILocation(line: 181, column: 13, scope: !778)
!1006 = !DILocation(line: 1548, column: 57, scope: !816, inlinedAt: !1007)
!1007 = !DILocation(line: 184, column: 20, scope: !782)
!1008 = !DILocation(line: 833, column: 56, scope: !828, inlinedAt: !1009)
!1009 = !DILocation(line: 1550, column: 38, scope: !816, inlinedAt: !1007)
!1010 = !DILocation(line: 130, column: 5, scope: !842, inlinedAt: !1011)
!1011 = !DILocation(line: 834, column: 5, scope: !828, inlinedAt: !1009)
!1012 = !DILocation(line: 178, column: 9, scope: !769)
!1013 = !DILocation(line: 179, column: 51, scope: !769)
!1014 = !DILocalVariable(name: "self", arg: 1, scope: !1015, file: !496, line: 216, type: !742)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !496, line: 216, column: 5)
!1016 = distinct !DISubprogram(name: "dangling", linkageName: "_ZN4core5alloc6layout6Layout8dangling17h2bd653c298c8219aE", scope: !497, file: !496, line: 216, type: !1017, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !1019, retainedNodes: !1020)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!660, !742}
!1019 = !DISubprogram(name: "dangling", linkageName: "_ZN4core5alloc6layout6Layout8dangling17h2bd653c298c8219aE", scope: !497, file: !496, line: 216, type: !1017, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !99)
!1020 = !{!1014}
!1021 = !DILocation(line: 216, column: 27, scope: !1015, inlinedAt: !1022)
!1022 = !DILocation(line: 179, column: 58, scope: !769)
!1023 = !DILocalVariable(name: "self", arg: 1, scope: !1024, file: !496, line: 141, type: !742)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !496, line: 141, column: 5)
!1025 = distinct !DISubprogram(name: "align", linkageName: "_ZN4core5alloc6layout6Layout5align17h4cd2c00345b05cbcE", scope: !497, file: !496, line: 141, type: !740, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !752, retainedNodes: !1026)
!1026 = !{!1023, !1027}
!1027 = !DILocalVariable(name: "self", arg: 1, scope: !1028, file: !496, line: 141, type: !742)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !496, line: 141, column: 5)
!1029 = !DILocation(line: 141, column: 24, scope: !1024, inlinedAt: !1030)
!1030 = !DILocation(line: 218, column: 87, scope: !1015, inlinedAt: !1022)
!1031 = !DILocation(line: 142, column: 9, scope: !1024, inlinedAt: !1030)
!1032 = !DILocalVariable(name: "self", arg: 1, scope: !1033, file: !549, line: 94, type: !503)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !549, line: 94, column: 5)
!1034 = distinct !DISubprogram(name: "as_usize", linkageName: "_ZN4core3ptr9alignment9Alignment8as_usize17hc59485a27dd9ceb1E", scope: !503, file: !549, line: 94, type: !760, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !762, retainedNodes: !1035)
!1035 = !{!1032, !1036}
!1036 = !DILocalVariable(name: "self", arg: 1, scope: !1037, file: !549, line: 94, type: !503)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !549, line: 94, column: 5)
!1038 = !DILocation(line: 94, column: 27, scope: !1033, inlinedAt: !1039)
!1039 = !DILocation(line: 142, column: 20, scope: !1024, inlinedAt: !1030)
!1040 = !DILocation(line: 95, column: 9, scope: !1033, inlinedAt: !1039)
!1041 = !DILocalVariable(name: "addr", arg: 1, scope: !1042, file: !113, line: 633, type: !95)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !113, line: 633, column: 1)
!1043 = distinct !DISubprogram(name: "without_provenance_mut<u8>", linkageName: "_ZN4core3ptr22without_provenance_mut17h4b89d0c066185e1aE", scope: !21, file: !113, line: 633, type: !1044, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!270, !95}
!1046 = !{!1041}
!1047 = !DILocation(line: 633, column: 40, scope: !1042, inlinedAt: !1048)
!1048 = !DILocation(line: 218, column: 41, scope: !1015, inlinedAt: !1022)
!1049 = !DILocation(line: 639, column: 14, scope: !1042, inlinedAt: !1048)
!1050 = !DILocalVariable(name: "ptr", arg: 1, scope: !1051, file: !262, line: 217, type: !270)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !262, line: 217, column: 5)
!1052 = distinct !DISubprogram(name: "new_unchecked<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9f500eab03a9f5b5E", scope: !660, file: !262, line: 217, type: !1053, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !1055, retainedNodes: !1056)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!660, !270}
!1055 = !DISubprogram(name: "new_unchecked<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9f500eab03a9f5b5E", scope: !660, file: !262, line: 217, type: !1053, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!1056 = !{!1050, !1057}
!1057 = !DILocalVariable(name: "ptr", arg: 1, scope: !1058, file: !262, line: 217, type: !270)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !262, line: 217, column: 5)
!1059 = !DILocation(line: 217, column: 39, scope: !1051, inlinedAt: !1060)
!1060 = !DILocation(line: 218, column: 18, scope: !1015, inlinedAt: !1022)
!1061 = !DILocation(line: 220, column: 13, scope: !1051, inlinedAt: !1060)
!1062 = !DILocation(line: 182, column: 34, scope: !778)
!1063 = !DILocation(line: 224, column: 32, scope: !1051, inlinedAt: !1060)
!1064 = !DILocation(line: 224, column: 13, scope: !1051, inlinedAt: !1060)
!1065 = !DILocation(line: 350, column: 9, scope: !956, inlinedAt: !962)
!1066 = !DILocation(line: 61, column: 9, scope: !985, inlinedAt: !993)
!1067 = !DILocation(line: 135, column: 52, scope: !832, inlinedAt: !844)
!1068 = !DILocation(line: 135, column: 36, scope: !832, inlinedAt: !844)
!1069 = !DILocation(line: 135, column: 14, scope: !832, inlinedAt: !844)
!1070 = !DILocation(line: 220, column: 13, scope: !973, inlinedAt: !982)
!1071 = !DILocation(line: 222, column: 33, scope: !973, inlinedAt: !982)
!1072 = !DILocation(line: 224, column: 32, scope: !973, inlinedAt: !982)
!1073 = !DILocation(line: 224, column: 13, scope: !973, inlinedAt: !982)
!1074 = !DILocation(line: 179, column: 18, scope: !769)
!1075 = !DILocation(line: 179, column: 72, scope: !769)
!1076 = !DILocation(line: 187, column: 6, scope: !769)
!1077 = !DILocation(line: 182, column: 79, scope: !778)
!1078 = !DILocation(line: 182, column: 73, scope: !778)
!1079 = !DILocation(line: 182, column: 31, scope: !778)
!1080 = !DILocation(line: 182, column: 56, scope: !778)
!1081 = !DILocation(line: 171, column: 34, scope: !965, inlinedAt: !969)
!1082 = !DILocation(line: 128, column: 23, scope: !1001, inlinedAt: !1083)
!1083 = !DILocation(line: 171, column: 41, scope: !965, inlinedAt: !969)
!1084 = !DILocation(line: 129, column: 9, scope: !1001, inlinedAt: !1083)
!1085 = !DILocation(line: 171, column: 49, scope: !965, inlinedAt: !969)
!1086 = !DILocation(line: 141, column: 24, scope: !1028, inlinedAt: !1087)
!1087 = !DILocation(line: 171, column: 56, scope: !965, inlinedAt: !969)
!1088 = !DILocation(line: 142, column: 9, scope: !1028, inlinedAt: !1087)
!1089 = !DILocation(line: 94, column: 27, scope: !1037, inlinedAt: !1090)
!1090 = !DILocation(line: 142, column: 20, scope: !1028, inlinedAt: !1087)
!1091 = !DILocation(line: 95, column: 9, scope: !1037, inlinedAt: !1090)
!1092 = !DILocation(line: 171, column: 14, scope: !965, inlinedAt: !969)
!1093 = !DILocation(line: 183, column: 40, scope: !780)
!1094 = !DILocalVariable(name: "ptr", arg: 1, scope: !1095, file: !262, line: 245, type: !270)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !262, line: 245, column: 5)
!1096 = distinct !DISubprogram(name: "new<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h1acd1ccd6dc03c04E", scope: !660, file: !262, line: 245, type: !1097, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !1099, retainedNodes: !1100)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!849, !270}
!1099 = !DISubprogram(name: "new<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h1acd1ccd6dc03c04E", scope: !660, file: !262, line: 245, type: !1097, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!1100 = !{!1094}
!1101 = !DILocation(line: 245, column: 22, scope: !1095, inlinedAt: !916)
!1102 = !DILocalVariable(name: "self", arg: 1, scope: !1103, file: !252, line: 35, type: !270)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !252, line: 35, column: 5)
!1104 = distinct !DISubprogram(name: "is_null<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he9f8a8607b652b29E", scope: !254, file: !252, line: 35, type: !268, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !1105)
!1105 = !{!1102}
!1106 = !DILocation(line: 35, column: 26, scope: !1103, inlinedAt: !1107)
!1107 = !DILocation(line: 246, column: 17, scope: !1095, inlinedAt: !916)
!1108 = !DILocalVariable(name: "ptr", arg: 1, scope: !1109, file: !252, line: 37, type: !270)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !252, line: 37, column: 9)
!1110 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null12runtime_impl17hd8487579b6546989E", scope: !267, file: !252, line: 37, type: !268, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !1111)
!1111 = !{!1108}
!1112 = !DILocation(line: 37, column: 25, scope: !1109, inlinedAt: !1113)
!1113 = !DILocation(line: 52, column: 18, scope: !1103, inlinedAt: !1107)
!1114 = !DILocalVariable(name: "self", arg: 1, scope: !1115, file: !252, line: 214, type: !270)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !252, line: 214, column: 5)
!1116 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h0670eef09c628f9cE", scope: !254, file: !252, line: 214, type: !277, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !1117)
!1117 = !{!1114}
!1118 = !DILocation(line: 214, column: 17, scope: !1115, inlinedAt: !1119)
!1119 = !DILocation(line: 38, column: 17, scope: !1109, inlinedAt: !1113)
!1120 = !DILocation(line: 60, column: 26, scope: !989, inlinedAt: !1121)
!1121 = !DILocation(line: 218, column: 38, scope: !1115, inlinedAt: !1119)
!1122 = !DILocation(line: 217, column: 39, scope: !1058, inlinedAt: !1123)
!1123 = !DILocation(line: 248, column: 27, scope: !1095, inlinedAt: !916)
!1124 = !DILocation(line: 218, column: 18, scope: !1115, inlinedAt: !1119)
!1125 = !DILocation(line: 246, column: 13, scope: !1095, inlinedAt: !916)
!1126 = !DILocation(line: 250, column: 13, scope: !1095, inlinedAt: !916)
!1127 = !DILocation(line: 1209, column: 21, scope: !846, inlinedAt: !884)
!1128 = !DILocation(line: 1964, column: 23, scope: !933, inlinedAt: !937)
!1129 = !DILocation(line: 220, column: 13, scope: !1058, inlinedAt: !1123)
!1130 = !DILocation(line: 224, column: 13, scope: !1058, inlinedAt: !1123)
!1131 = !DILocation(line: 248, column: 13, scope: !1095, inlinedAt: !916)
!1132 = !DILocation(line: 1208, column: 18, scope: !846, inlinedAt: !884)
!1133 = !DILocation(line: 1208, column: 18, scope: !882, inlinedAt: !884)
!1134 = !DILocation(line: 1208, column: 24, scope: !882, inlinedAt: !884)
!1135 = !DILocation(line: 1952, column: 16, scope: !888, inlinedAt: !916)
!1136 = !DILocation(line: 1952, column: 16, scope: !914, inlinedAt: !916)
!1137 = !DILocation(line: 1952, column: 22, scope: !914, inlinedAt: !916)
!1138 = !DILocation(line: 183, column: 21, scope: !782)
!1139 = !DILocation(line: 183, column: 27, scope: !804)
!1140 = !DILocation(line: 1548, column: 39, scope: !816, inlinedAt: !1007)
!1141 = !DILocation(line: 349, column: 25, scope: !960, inlinedAt: !1142)
!1142 = !DILocation(line: 1550, column: 75, scope: !816, inlinedAt: !1007)
!1143 = !DILocation(line: 350, column: 9, scope: !960, inlinedAt: !1142)
!1144 = !DILocation(line: 833, column: 42, scope: !828, inlinedAt: !1009)
!1145 = !DILocation(line: 60, column: 26, scope: !991, inlinedAt: !1146)
!1146 = !DILocation(line: 834, column: 29, scope: !828, inlinedAt: !1009)
!1147 = !DILocation(line: 61, column: 9, scope: !991, inlinedAt: !1146)
!1148 = !DILocation(line: 129, column: 5, scope: !842, inlinedAt: !1011)
!1149 = !DILocation(line: 135, column: 36, scope: !842, inlinedAt: !1011)
!1150 = !DILocation(line: 135, column: 14, scope: !842, inlinedAt: !1011)
!1151 = !DILocation(line: 217, column: 39, scope: !980, inlinedAt: !1152)
!1152 = !DILocation(line: 1550, column: 18, scope: !816, inlinedAt: !1007)
!1153 = !DILocation(line: 220, column: 13, scope: !980, inlinedAt: !1152)
!1154 = !DILocation(line: 224, column: 13, scope: !980, inlinedAt: !1152)
!1155 = !DILocation(line: 184, column: 17, scope: !782)
!1156 = !DILocation(line: 185, column: 13, scope: !769)
!1157 = distinct !DISubprogram(name: "into_inner<usize, alloc::alloc::Global>", linkageName: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$10into_inner17h0a0273a7c9721602E", scope: !1159, file: !1158, line: 606, type: !1161, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !1165, retainedNodes: !1163)
!1158 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/alloc/src/boxed.rs", directory: "", checksumkind: CSK_MD5, checksum: "c580c98b6870e10ef20edb2fa33cc24d")
!1159 = !DINamespace(name: "{impl#1}", scope: !1160)
!1160 = !DINamespace(name: "boxed", scope: !579)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!95, !235}
!1163 = !{!1164}
!1164 = !DILocalVariable(name: "boxed", arg: 1, scope: !1157, file: !1158, line: 606, type: !235)
!1165 = !{!174, !1166}
!1166 = !DITemplateTypeParameter(name: "A", type: !620)
!1167 = !DILocation(line: 606, column: 23, scope: !1157)
!1168 = !DILocation(line: 607, column: 9, scope: !1157)
!1169 = !DILocation(line: 608, column: 5, scope: !1157)
!1170 = !DILocation(line: 606, column: 5, scope: !1157)
!1171 = !DILocation(line: 608, column: 6, scope: !1157)
!1172 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0f4e9136f1421813E", scope: !599, file: !577, line: 251, type: !1173, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !1175)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !619, !660, !497}
!1175 = !{!1176, !1177, !1178}
!1176 = !DILocalVariable(name: "self", arg: 1, scope: !1172, file: !577, line: 251, type: !619)
!1177 = !DILocalVariable(name: "ptr", arg: 2, scope: !1172, file: !577, line: 251, type: !660)
!1178 = !DILocalVariable(name: "layout", arg: 3, scope: !1172, file: !577, line: 251, type: !497)
!1179 = !DILocation(line: 251, column: 26, scope: !1172)
!1180 = !DILocation(line: 251, column: 33, scope: !1172)
!1181 = !DILocalVariable(name: "self", arg: 1, scope: !1182, file: !262, line: 349, type: !660)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !262, line: 349, column: 5)
!1183 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0b159d512463d9b7E", scope: !660, file: !262, line: 349, type: !663, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !665, retainedNodes: !1184)
!1184 = !{!1181}
!1185 = !DILocation(line: 349, column: 25, scope: !1182, inlinedAt: !1186)
!1186 = !DILocation(line: 255, column: 34, scope: !1172)
!1187 = !DILocation(line: 251, column: 51, scope: !1172)
!1188 = !DILocalVariable(name: "layout", arg: 2, scope: !1189, file: !577, line: 117, type: !497)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !577, line: 117, column: 1)
!1190 = distinct !DISubprogram(name: "dealloc", linkageName: "_ZN5alloc5alloc7dealloc17h0bf9123b9568e0f7E", scope: !578, file: !577, line: 117, type: !1191, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !270, !497}
!1193 = !{!1194, !1188}
!1194 = !DILocalVariable(name: "ptr", arg: 1, scope: !1189, file: !577, line: 117, type: !270)
!1195 = !DILocation(line: 117, column: 37, scope: !1189, inlinedAt: !1196)
!1196 = !DILocation(line: 255, column: 22, scope: !1172)
!1197 = !DILocation(line: 252, column: 12, scope: !1172)
!1198 = !DILocalVariable(name: "self", arg: 1, scope: !1199, file: !496, line: 128, type: !742)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !496, line: 128, column: 5)
!1200 = distinct !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17hfc82eddfbfc900d3E", scope: !497, file: !496, line: 128, type: !740, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !743, retainedNodes: !1201)
!1201 = !{!1198, !1202}
!1202 = !DILocalVariable(name: "self", arg: 1, scope: !1203, file: !496, line: 128, type: !742)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !496, line: 128, column: 5)
!1204 = !DILocation(line: 128, column: 23, scope: !1199, inlinedAt: !1205)
!1205 = !DILocation(line: 252, column: 19, scope: !1172)
!1206 = !DILocation(line: 129, column: 9, scope: !1199, inlinedAt: !1205)
!1207 = !DILocation(line: 252, column: 9, scope: !1172)
!1208 = !DILocation(line: 350, column: 9, scope: !1182, inlinedAt: !1186)
!1209 = !DILocation(line: 117, column: 23, scope: !1189, inlinedAt: !1196)
!1210 = !DILocation(line: 255, column: 44, scope: !1172)
!1211 = !DILocation(line: 118, column: 34, scope: !1189, inlinedAt: !1196)
!1212 = !DILocation(line: 128, column: 23, scope: !1203, inlinedAt: !1213)
!1213 = !DILocation(line: 118, column: 41, scope: !1189, inlinedAt: !1196)
!1214 = !DILocation(line: 129, column: 9, scope: !1203, inlinedAt: !1213)
!1215 = !DILocation(line: 118, column: 49, scope: !1189, inlinedAt: !1196)
!1216 = !DILocalVariable(name: "self", arg: 1, scope: !1217, file: !496, line: 141, type: !742)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !496, line: 141, column: 5)
!1218 = distinct !DISubprogram(name: "align", linkageName: "_ZN4core5alloc6layout6Layout5align17h4cd2c00345b05cbcE", scope: !497, file: !496, line: 141, type: !740, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !752, retainedNodes: !1219)
!1219 = !{!1216}
!1220 = !DILocation(line: 141, column: 24, scope: !1217, inlinedAt: !1221)
!1221 = !DILocation(line: 118, column: 56, scope: !1189, inlinedAt: !1196)
!1222 = !DILocation(line: 142, column: 9, scope: !1217, inlinedAt: !1221)
!1223 = !DILocalVariable(name: "self", arg: 1, scope: !1224, file: !549, line: 94, type: !503)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !549, line: 94, column: 5)
!1225 = distinct !DISubprogram(name: "as_usize", linkageName: "_ZN4core3ptr9alignment9Alignment8as_usize17hc59485a27dd9ceb1E", scope: !503, file: !549, line: 94, type: !760, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !762, retainedNodes: !1226)
!1226 = !{!1223}
!1227 = !DILocation(line: 94, column: 27, scope: !1224, inlinedAt: !1228)
!1228 = !DILocation(line: 142, column: 20, scope: !1217, inlinedAt: !1221)
!1229 = !DILocation(line: 95, column: 9, scope: !1224, inlinedAt: !1228)
!1230 = !DILocation(line: 118, column: 14, scope: !1189, inlinedAt: !1196)
!1231 = !DILocation(line: 257, column: 6, scope: !1172)
!1232 = distinct !DISubprogram(name: "drop<usize, alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb33fbf3c67371d6E", scope: !1233, file: !1158, line: 1236, type: !1234, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !1165, retainedNodes: !1237)
!1233 = !DINamespace(name: "{impl#8}", scope: !1160)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::boxed::Box<usize, alloc::alloc::Global>", baseType: !235, size: 64, align: 64, dwarfAddressSpace: 0)
!1237 = !{!1238, !1239, !1239, !1251}
!1238 = !DILocalVariable(name: "self", arg: 1, scope: !1232, file: !1158, line: 1236, type: !1236)
!1239 = !DILocalVariable(name: "ptr", scope: !1240, file: !1158, line: 1239, type: !1241, align: 8)
!1240 = distinct !DILexicalBlock(scope: !1232, file: !1158, line: 1239, column: 9)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<usize>", scope: !1242, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !1243, templateParams: !173, identifier: "f7472a7d12b2faecbb024e2ce539d6fa")
!1242 = !DINamespace(name: "unique", scope: !21)
!1243 = !{!1244, !1248}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1241, file: !9, baseType: !1245, size: 64, align: 64, flags: DIFlagPrivate)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<usize>", scope: !244, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !1246, templateParams: !173, identifier: "5f200755ba38655c47b10575b977c7dd")
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1245, file: !9, baseType: !508, size: 64, align: 64, flags: DIFlagPrivate)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1241, file: !9, baseType: !1249, align: 8, offset: 64, flags: DIFlagPrivate)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<usize>", scope: !1250, file: !9, align: 8, flags: DIFlagPublic, elements: !99, templateParams: !173, identifier: "4e2d851c12144dfee0271a9c6c1a4070")
!1250 = !DINamespace(name: "marker", scope: !12)
!1251 = !DILocalVariable(name: "layout", scope: !1252, file: !1158, line: 1242, type: !497, align: 8)
!1252 = distinct !DILexicalBlock(scope: !1240, file: !1158, line: 1242, column: 13)
!1253 = !DILocation(line: 1236, column: 13, scope: !1232)
!1254 = !DILocation(line: 1242, column: 17, scope: !1252)
!1255 = !DILocalVariable(name: "unique", scope: !1256, file: !262, line: 1828, type: !1261, align: 8)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !262, line: 1828, column: 5)
!1257 = distinct !DISubprogram(name: "from<u8>", linkageName: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17he8bf77cb01629602E", scope: !1258, file: !262, line: 1828, type: !1259, scopeLine: 1828, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, retainedNodes: !1266)
!1258 = !DINamespace(name: "{impl#16}", scope: !244)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!660, !1261}
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !1242, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !1262, templateParams: !145, identifier: "69108fd3db7f3a9ffa6a7099cfc4cabc")
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1261, file: !9, baseType: !660, size: 64, align: 64, flags: DIFlagPrivate)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1261, file: !9, baseType: !1265, align: 8, offset: 64, flags: DIFlagPrivate)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !1250, file: !9, align: 8, flags: DIFlagPublic, elements: !99, templateParams: !145, identifier: "58382962a7a0039197815d489f0c0dea")
!1266 = !{!1255, !1255}
!1267 = !DILocation(line: 1828, column: 13, scope: !1256, inlinedAt: !1268)
!1268 = !DILocation(line: 1244, column: 35, scope: !1252)
!1269 = !DILocalVariable(name: "self", scope: !1270, file: !1271, line: 112, type: !1261, align: 8)
!1270 = distinct !DILexicalBlock(scope: !1272, file: !1271, line: 112, column: 5)
!1271 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/unique.rs", directory: "", checksumkind: CSK_MD5, checksum: "732da2a5cbcfe11170beb774dbba4d93")
!1272 = distinct !DISubprogram(name: "as_non_null_ptr<u8>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$15as_non_null_ptr17hc070ee145ceb80d0E", scope: !1261, file: !1271, line: 112, type: !1259, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !145, declaration: !1273, retainedNodes: !1274)
!1273 = !DISubprogram(name: "as_non_null_ptr<u8>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$15as_non_null_ptr17hc070ee145ceb80d0E", scope: !1261, file: !1271, line: 112, type: !1259, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !145)
!1274 = !{!1269, !1269}
!1275 = !DILocation(line: 112, column: 34, scope: !1270, inlinedAt: !1276)
!1276 = !DILocation(line: 1829, column: 16, scope: !1256, inlinedAt: !1268)
!1277 = !DILocation(line: 1239, column: 19, scope: !1232)
!1278 = !DILocation(line: 1239, column: 13, scope: !1240)
!1279 = !DILocalVariable(name: "self", scope: !1280, file: !1271, line: 105, type: !1241, align: 8)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !1271, line: 105, column: 5)
!1281 = distinct !DISubprogram(name: "as_ptr<usize>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h3a2ef26a6664f3e8E", scope: !1241, file: !1271, line: 105, type: !1282, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !173, declaration: !1284, retainedNodes: !1285)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!169, !1241}
!1284 = !DISubprogram(name: "as_ptr<usize>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h3a2ef26a6664f3e8E", scope: !1241, file: !1271, line: 105, type: !1282, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !173)
!1285 = !{!1279, !1279}
!1286 = !DILocation(line: 105, column: 25, scope: !1280, inlinedAt: !1287)
!1287 = !DILocation(line: 1242, column: 52, scope: !1240)
!1288 = !DILocalVariable(name: "self", arg: 1, scope: !1289, file: !262, line: 349, type: !1245)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !262, line: 349, column: 5)
!1290 = distinct !DISubprogram(name: "as_ptr<usize>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2c9b4ba87a132badE", scope: !1245, file: !262, line: 349, type: !1291, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !173, declaration: !1293, retainedNodes: !1294)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!169, !1245}
!1293 = !DISubprogram(name: "as_ptr<usize>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2c9b4ba87a132badE", scope: !1245, file: !262, line: 349, type: !1291, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !173)
!1294 = !{!1288, !1295}
!1295 = !DILocalVariable(name: "self", arg: 1, scope: !1296, file: !262, line: 349, type: !1245)
!1296 = distinct !DILexicalBlock(scope: !1290, file: !262, line: 349, column: 5)
!1297 = !DILocation(line: 349, column: 25, scope: !1289, inlinedAt: !1298)
!1298 = !DILocation(line: 106, column: 22, scope: !1280, inlinedAt: !1287)
!1299 = !DILocalVariable(name: "self", scope: !1300, file: !1271, line: 145, type: !1241, align: 8)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !1271, line: 145, column: 5)
!1301 = distinct !DISubprogram(name: "cast<usize, u8>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hb3729c5d164229f5E", scope: !1241, file: !1271, line: 145, type: !1302, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !1305, declaration: !1304, retainedNodes: !1306)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!1261, !1241}
!1304 = !DISubprogram(name: "cast<usize, u8>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hb3729c5d164229f5E", scope: !1241, file: !1271, line: 145, type: !1302, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1305)
!1305 = !{!174, !700}
!1306 = !{!1299, !1299}
!1307 = !DILocation(line: 145, column: 26, scope: !1300, inlinedAt: !1308)
!1308 = !DILocation(line: 1244, column: 50, scope: !1252)
!1309 = !DILocalVariable(name: "self", arg: 1, scope: !1310, file: !262, line: 473, type: !1245)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !262, line: 473, column: 5)
!1311 = distinct !DISubprogram(name: "cast<usize, u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h26da21eba1026578E", scope: !1245, file: !262, line: 473, type: !1312, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !1305, declaration: !1314, retainedNodes: !1315)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!660, !1245}
!1314 = !DISubprogram(name: "cast<usize, u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h26da21eba1026578E", scope: !1245, file: !262, line: 473, type: !1312, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1305)
!1315 = !{!1309}
!1316 = !DILocation(line: 473, column: 26, scope: !1310, inlinedAt: !1317)
!1317 = !DILocation(line: 148, column: 40, scope: !1300, inlinedAt: !1308)
!1318 = !DILocation(line: 349, column: 25, scope: !1296, inlinedAt: !1319)
!1319 = !DILocation(line: 475, column: 42, scope: !1310, inlinedAt: !1317)
!1320 = !DILocation(line: 1242, column: 26, scope: !1240)
!1321 = !DILocation(line: 1243, column: 16, scope: !1252)
!1322 = !DILocalVariable(name: "self", arg: 1, scope: !1323, file: !496, line: 128, type: !742)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !496, line: 128, column: 5)
!1324 = distinct !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17hfc82eddfbfc900d3E", scope: !497, file: !496, line: 128, type: !740, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !99, declaration: !743, retainedNodes: !1325)
!1325 = !{!1322}
!1326 = !DILocation(line: 128, column: 23, scope: !1323, inlinedAt: !1327)
!1327 = !DILocation(line: 1243, column: 23, scope: !1252)
!1328 = !DILocation(line: 129, column: 9, scope: !1323, inlinedAt: !1327)
!1329 = !DILocation(line: 1243, column: 13, scope: !1252)
!1330 = !DILocation(line: 1244, column: 17, scope: !1252)
!1331 = !DILocation(line: 475, column: 18, scope: !1310, inlinedAt: !1317)
!1332 = !DILocation(line: 1244, column: 59, scope: !1252)
!1333 = !DILocation(line: 1247, column: 6, scope: !1232)
!1334 = distinct !DISubprogram(name: "as_mut<usize, alloc::alloc::Global>", linkageName: "_ZN80_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$T$GT$$GT$6as_mut17hc7acadc6d82d92bdE", scope: !1335, file: !1158, line: 2116, type: !1336, scopeLine: 2116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !1165, retainedNodes: !1339)
!1335 = !DINamespace(name: "{impl#60}", scope: !1160)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1338, !1236}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!1339 = !{!1340}
!1340 = !DILocalVariable(name: "self", arg: 1, scope: !1334, file: !1158, line: 2116, type: !1236)
!1341 = !DILocation(line: 2116, column: 15, scope: !1334)
!1342 = !DILocation(line: 2117, column: 9, scope: !1334)
!1343 = !DILocation(line: 2118, column: 6, scope: !1334)
!1344 = distinct !DISubprogram(name: "foo", linkageName: "_ZN8lib_demo3foo17h513ff704e90c1191E", scope: !1346, file: !1345, line: 5, type: !1347, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, templateParams: !99, retainedNodes: !1349)
!1345 = !DIFile(filename: "src/lib.rs", directory: "/home/swli/rust-isolation/lib_demo", checksumkind: CSK_MD5, checksum: "194292da4990575bcd6501c684ea12b0")
!1346 = !DINamespace(name: "lib_demo", scope: null)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!95}
!1349 = !{!1350, !1352}
!1350 = !DILocalVariable(name: "b", scope: !1351, file: !1345, line: 6, type: !235, align: 8)
!1351 = distinct !DILexicalBlock(scope: !1344, file: !1345, line: 6, column: 4)
!1352 = !DILocalVariable(name: "p", scope: !1353, file: !1345, line: 8, type: !1338, align: 8)
!1353 = distinct !DILexicalBlock(scope: !1351, file: !1345, line: 8, column: 5)
!1354 = !DILocation(line: 6, column: 8, scope: !1351)
!1355 = !DILocation(line: 8, column: 9, scope: !1353)
!1356 = !DILocation(line: 6, column: 16, scope: !1344)
!1357 = !DILocalVariable(name: "x", arg: 1, scope: !1358, file: !1158, line: 216, type: !95)
!1358 = distinct !DISubprogram(name: "new<usize>", linkageName: "_ZN5alloc5boxed12Box$LT$T$GT$3new17h116662074d1f5b9cE", scope: !1359, file: !1158, line: 216, type: !1360, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !173, retainedNodes: !1362)
!1359 = !DINamespace(name: "{impl#0}", scope: !1160)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!235, !95}
!1362 = !{!1357}
!1363 = !DILocation(line: 216, column: 16, scope: !1358, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 6, column: 16, scope: !1344)
!1365 = !DILocation(line: 218, column: 9, scope: !1358, inlinedAt: !1364)
!1366 = !DILocation(line: 216, column: 5, scope: !1358, inlinedAt: !1364)
!1367 = !DILocation(line: 218, column: 18, scope: !1358, inlinedAt: !1364)
!1368 = !DILocation(line: 8, column: 13, scope: !1351)
!1369 = !DILocation(line: 12, column: 1, scope: !1344)
!1370 = !{i8 0, i8 2}
!1371 = !DILocation(line: 9, column: 30, scope: !1353)
!1372 = !DILocation(line: 9, column: 5, scope: !1353)
!1373 = !DILocation(line: 11, column: 20, scope: !1351)
!1374 = !DILocation(line: 11, column: 4, scope: !1351)
!1375 = !DILocation(line: 12, column: 2, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1344, file: !1345, discriminator: 0)
!1377 = !DILocation(line: 5, column: 1, scope: !1344)
