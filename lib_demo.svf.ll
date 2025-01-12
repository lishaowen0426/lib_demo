; ModuleID = '4fzl2hrpgus5u2ge'
source_filename = "4fzl2hrpgus5u2ge"
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
@__rust_no_alloc_shim_is_unstable = external global i8, !svf !0

; core::ptr::read_volatile::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr13read_volatile18precondition_check17ha1f992f53d954904E(ptr %addr, i64 %align) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89 {
start:
  %ptr.dbg.spill = alloca ptr, align 8, !svf !0
  %align.dbg.spill = alloca i64, align 8
  %addr.dbg.spill = alloca ptr, align 8
  store ptr %addr, ptr %addr.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !98, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !102, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !115, metadata !DIExpression()), !dbg !126
  store i64 %align, ptr %align.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !110, metadata !DIExpression()), !dbg !128
  store ptr %addr, ptr %ptr.dbg.spill, align 8, !dbg !129, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !130, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !140, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !150, metadata !DIExpression()), !dbg !158
  %_6 = ptrtoint ptr %addr to i64, !dbg !160, !svf !0
  %0 = icmp eq i64 %_6, 0, !dbg !161, !svf !0
  br i1 %0, label %bb4, label %bb5, !dbg !161, !svf !0

bb4:                                              ; preds = %start
  br label %bb2, !dbg !162, !svf !0

bb5:                                              ; preds = %start
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_3 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h3ca58e58e2861592E"(ptr %addr, i64 %align)
          to label %bb3 unwind label %terminate, !dbg !163, !svf !0

bb2:                                              ; preds = %bb3, %bb4
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hc4958c42bb3d12caE(ptr align 1 @alloc_d4d2a2a8539eafc62756407d946babb3, i64 110) #11, !dbg !164, !svf !0
  br label %UnifiedUnreachableBlock

terminate:                                        ; preds = %bb5
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h93cea82ef68559cdE() #12, !dbg !165
  br label %UnifiedUnreachableBlock

bb3:                                              ; preds = %bb5
  br i1 %_3, label %bb1, label %bb2, !dbg !112, !svf !0

bb1:                                              ; preds = %bb3
  ret void, !dbg !166, !svf !0

UnifiedUnreachableBlock:                          ; preds = %terminate, %bb2
  unreachable
}

; core::ptr::write_volatile
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr14write_volatile17h0e7369cb0d2385beE(ptr %dst, i64 %src) unnamed_addr #1 !dbg !167 {
start:
  %src.dbg.spill = alloca i64, align 8
  %dst.dbg.spill = alloca ptr, align 8
  store ptr %dst, ptr %dst.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.dbg.spill, metadata !172, metadata !DIExpression()), !dbg !176
  store i64 %src, ptr %src.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %src.dbg.spill, metadata !173, metadata !DIExpression()), !dbg !177
  br label %bb1, !dbg !178, !svf !0

bb1:                                              ; preds = %start
; call core::ptr::write_volatile::precondition_check
  call void @_ZN4core3ptr14write_volatile18precondition_check17h1e6e772f37ccb778E(ptr %dst, i64 8) #13, !dbg !178, !svf !0
  br label %bb2, !dbg !178, !svf !0

bb2:                                              ; preds = %bb1
  store volatile i64 %src, ptr %dst, align 8, !dbg !179, !svf !0
  ret void, !dbg !180, !svf !0
}

; core::ptr::write_volatile::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr14write_volatile18precondition_check17h1e6e772f37ccb778E(ptr %addr, i64 %align) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181 {
start:
  %ptr.dbg.spill1 = alloca ptr, align 8, !svf !0
  %ptr.dbg.spill = alloca ptr, align 8, !svf !0
  %align.dbg.spill = alloca i64, align 8
  %addr.dbg.spill = alloca ptr, align 8
  store ptr %addr, ptr %addr.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !187, metadata !DIExpression()), !dbg !189
  store i64 %align, ptr %align.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !190, metadata !DIExpression()), !dbg !195
  store ptr %addr, ptr %ptr.dbg.spill, align 8, !dbg !198, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !194, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !200, metadata !DIExpression()), !dbg !204
  store ptr %addr, ptr %ptr.dbg.spill1, align 8, !dbg !206, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !207, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !213, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !219, metadata !DIExpression()), !dbg !223
  %_7 = ptrtoint ptr %addr to i64, !dbg !225, !svf !0
  %0 = icmp eq i64 %_7, 0, !dbg !226, !svf !0
  br i1 %0, label %bb4, label %bb5, !dbg !226, !svf !0

bb4:                                              ; preds = %start
  br label %bb2, !dbg !227, !svf !0

bb5:                                              ; preds = %start
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_3 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h3ca58e58e2861592E"(ptr %addr, i64 %align)
          to label %bb3 unwind label %terminate, !dbg !228, !svf !0

bb2:                                              ; preds = %bb3, %bb4
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hc4958c42bb3d12caE(ptr align 1 @alloc_a3bf71499bef7a3e66a38a17ba71b215, i64 111) #11, !dbg !229, !svf !0
  br label %UnifiedUnreachableBlock

terminate:                                        ; preds = %bb5
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h93cea82ef68559cdE() #12, !dbg !230
  br label %UnifiedUnreachableBlock

bb3:                                              ; preds = %bb5
  br i1 %_3, label %bb1, label %bb2, !dbg !196, !svf !0

bb1:                                              ; preds = %bb3
  ret void, !dbg !231, !svf !0

UnifiedUnreachableBlock:                          ; preds = %terminate, %bb2
  unreachable
}

; core::ptr::drop_in_place<alloc::boxed::Box<usize>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr51drop_in_place$LT$alloc..boxed..Box$LT$usize$GT$$GT$17h11bda6379cf0c1d4E"(ptr align 8 %_1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !232 {
start:
  %0 = alloca { ptr, i32, [1 x i32] }, align 8, !svf !0
  %_1.dbg.spill = alloca ptr, align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %_1.dbg.spill, metadata !238, metadata !DIExpression()), !dbg !241
  %_6 = load ptr, ptr %_1, align 8, !dbg !241, !noundef !100, !svf !0
  br label %bb3, !dbg !241, !svf !0

bb3:                                              ; preds = %start
; call <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f74182a0b90b0d9E"(ptr align 8 %_1), !dbg !241, !svf !0
  ret void, !dbg !241, !svf !0

bb4:                                              ; No predecessors!
; invoke <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f74182a0b90b0d9E"(ptr align 8 %_1) #14
          to label %bb1 unwind label %terminate, !dbg !241, !svf !0

terminate:                                        ; preds = %bb4
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17hb420a79d57e7ecc0E() #12, !dbg !241
  unreachable, !dbg !241

bb1:                                              ; preds = %bb4
  %4 = load ptr, ptr %0, align 8, !dbg !241, !noundef !100, !svf !0
  %5 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !241, !svf !0
  %6 = load i32, ptr %5, align 8, !dbg !241, !noundef !100, !svf !0
  %7 = insertvalue { ptr, i32 } poison, ptr %4, 0, !dbg !241, !svf !0
  %8 = insertvalue { ptr, i32 } %7, i32 %6, 1, !dbg !241, !svf !0
  resume { ptr, i32 } %8, !dbg !241, !svf !0
}

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h0d594ad5908f6c4fE"(ptr %ptr) unnamed_addr #0 !dbg !242 {
start:
  %ptr.dbg.spill1 = alloca ptr, align 8, !svf !0
  %ptr.dbg.spill = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !251, metadata !DIExpression()), !dbg !260
  store ptr %ptr, ptr %ptr.dbg.spill1, align 8, !dbg !264, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !265, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !275, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill1, metadata !283, metadata !DIExpression()), !dbg !289
  %_4 = ptrtoint ptr %ptr to i64, !dbg !291, !svf !0
  %0 = icmp eq i64 %_4, 0, !dbg !292, !svf !0
  br i1 %0, label %bb1, label %bb2, !dbg !292, !svf !0

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hc4958c42bb3d12caE(ptr align 1 @alloc_20b3d155afd5c58c42e598b7e6d186ef, i64 93) #11, !dbg !293, !svf !0
  unreachable, !dbg !293, !svf !0

bb2:                                              ; preds = %start
  ret void, !dbg !294, !svf !0
}

; core::ptr::const_ptr::<impl *const T>::is_aligned_to
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h3ca58e58e2861592E"(ptr %self, i64 %align) unnamed_addr #1 !dbg !295 {
start:
  %pieces.dbg.spill = alloca { ptr, i64 }, align 8, !svf !0
  %ptr.dbg.spill = alloca ptr, align 8, !svf !0
  %0 = alloca i64, align 8, !svf !0
  %align.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_4 = alloca %"core::fmt::Arguments<'_>", align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !297, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !300, metadata !DIExpression()), !dbg !309
  store i64 %align, ptr %align.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !298, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !325, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !335, metadata !DIExpression()), !dbg !341
  %1 = call i64 @llvm.ctpop.i64(i64 %align), !dbg !333, !svf !0
  store i64 %1, ptr %0, align 8, !dbg !333, !svf !0
  %_8 = load i64, ptr %0, align 8, !dbg !333, !noundef !100, !svf !0
  %_7 = trunc i64 %_8 to i32, !dbg !333, !svf !0
  %2 = icmp eq i32 %_7, 1, !dbg !343, !svf !0
  br i1 %2, label %bb1, label %bb2, !dbg !343, !svf !0

bb1:                                              ; preds = %start
  store ptr %self, ptr %ptr.dbg.spill, align 8, !dbg !344, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !340, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !346, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !306, metadata !DIExpression()), !dbg !354
  %_12 = ptrtoint ptr %self to i64, !dbg !356, !svf !0
  %_14.0 = sub i64 %align, 1, !dbg !357, !svf !0
  %_14.1 = icmp ult i64 %align, 1, !dbg !357, !svf !0
  %3 = call i1 @llvm.expect.i1(i1 %_14.1, i1 false), !dbg !357, !svf !0
  br i1 %3, label %panic, label %bb4, !dbg !357, !svf !0

bb2:                                              ; preds = %start
  store ptr @alloc_041983ee8170efdaaf95ba67fd072d26, ptr %pieces.dbg.spill, align 8, !dbg !358, !svf !0
  %4 = getelementptr inbounds i8, ptr %pieces.dbg.spill, i64 8, !dbg !358, !svf !0
  store i64 1, ptr %4, align 8, !dbg !358, !svf !0
  call void @llvm.dbg.declare(metadata ptr %pieces.dbg.spill, metadata !359, metadata !DIExpression()), !dbg !487
  store ptr @alloc_041983ee8170efdaaf95ba67fd072d26, ptr %_4, align 8, !dbg !491, !svf !0
  %5 = getelementptr inbounds i8, ptr %_4, i64 8, !dbg !491, !svf !0
  store i64 1, ptr %5, align 8, !dbg !491, !svf !0
  %6 = load ptr, ptr @0, align 8, !dbg !491, !align !492, !noundef !100, !svf !0
  %7 = getelementptr inbounds i8, ptr @0, i64 8
  %8 = load i64, ptr %7, align 8, !dbg !491, !svf !0
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4, i32 0, i32 2, !dbg !491, !svf !0
  store ptr %6, ptr %9, align 8, !dbg !491, !svf !0
  %10 = getelementptr inbounds i8, ptr %9, i64 8, !dbg !491, !svf !0
  store i64 %8, ptr %10, align 8, !dbg !491, !svf !0
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4, i32 0, i32 1, !dbg !491, !svf !0
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %11, align 8, !dbg !491, !svf !0
  %12 = getelementptr inbounds i8, ptr %11, i64 8, !dbg !491, !svf !0
  store i64 0, ptr %12, align 8, !dbg !491, !svf !0
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h4f352d4cc44a40a9E(ptr align 8 %_4, ptr align 8 @alloc_26ebc41093fb0ba642c3454cd7052caf) #15, !dbg !493, !svf !0
  br label %UnifiedUnreachableBlock

bb4:                                              ; preds = %bb1
  %_11 = and i64 %_12, %_14.0, !dbg !494, !svf !0
  %_0 = icmp eq i64 %_11, 0, !dbg !494, !svf !0
  ret i1 %_0, !dbg !495, !svf !0

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h807530e8eff4fee3E(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_5861d9e48b4cb5480b1f66c4c53e87c8) #15, !dbg !357
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %panic, %bb2
  unreachable
}

; core::alloc::layout::Layout::for_value_raw
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout13for_value_raw17he1478a1eb52eda4eE(ptr %t) unnamed_addr #2 !dbg !496 {
start:
  %0 = alloca i64, align 8, !svf !0
  %align.dbg.spill = alloca i64, align 8, !svf !0
  %1 = alloca i64, align 8, !svf !0
  %size.dbg.spill = alloca i64, align 8, !svf !0
  %2 = alloca i64, align 8, !svf !0
  %t.dbg.spill = alloca ptr, align 8
  %_0 = alloca %"core::alloc::layout::Layout", align 8
  store ptr %t, ptr %t.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %t.dbg.spill, metadata !512, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata ptr %t.dbg.spill, metadata !517, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata ptr %t.dbg.spill, metadata !527, metadata !DIExpression()), !dbg !531
  store i64 8, ptr %2, align 8, !dbg !533, !svf !0
  %size = load i64, ptr %2, align 8, !dbg !533, !noundef !100, !svf !0
  store i64 %size, ptr %size.dbg.spill, align 8, !dbg !533, !svf !0
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !513, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !535, metadata !DIExpression()), !dbg !543
  store i64 8, ptr %1, align 8, !dbg !545, !svf !0
  %align = load i64, ptr %1, align 8, !dbg !545, !noundef !100, !svf !0
  store i64 %align, ptr %align.dbg.spill, align 8, !dbg !545, !svf !0
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !515, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !542, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !548, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !558, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !565, metadata !DIExpression()), !dbg !570
  br label %bb3, !dbg !572, !svf !0

bb3:                                              ; preds = %start
  %3 = call i64 @llvm.ctpop.i64(i64 %align), !dbg !570, !svf !0
  store i64 %3, ptr %0, align 8, !dbg !570, !svf !0
  %_8 = load i64, ptr %0, align 8, !dbg !570, !noundef !100, !svf !0
  %_7 = trunc i64 %_8 to i32, !dbg !570, !svf !0
  %4 = icmp eq i32 %_7, 1, !dbg !573, !svf !0
  br i1 %4, label %bb4, label %bb5, !dbg !573, !svf !0

bb4:                                              ; preds = %bb3
  br label %bb6, !dbg !572, !svf !0

bb5:                                              ; preds = %bb3
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hc4958c42bb3d12caE(ptr align 1 @alloc_c4b1ee8325c854da080be0f8139b99b7, i64 48) #11, !dbg !572, !svf !0
  unreachable, !dbg !572, !svf !0

bb6:                                              ; preds = %bb4
  %5 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !574, !svf !0
  store i64 %size, ptr %5, align 8, !dbg !574, !svf !0
  store i64 %align, ptr %_0, align 8, !dbg !574, !svf !0
  %6 = load i64, ptr %_0, align 8, !dbg !575, !range !576, !noundef !100, !svf !0
  %7 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !575, !svf !0
  %8 = load i64, ptr %7, align 8, !dbg !575, !noundef !100, !svf !0
  %9 = insertvalue { i64, i64 } poison, i64 %6, 0, !dbg !575, !svf !0
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1, !dbg !575, !svf !0
  ret { i64, i64 } %10, !dbg !575, !svf !0
}

; alloc::alloc::exchange_malloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @_ZN5alloc5alloc15exchange_malloc17h4762b1c233d365c1E(i64 %size, i64 %align) unnamed_addr #1 !dbg !577 {
start:
  %ptr.dbg.spill = alloca %"core::ptr::non_null::NonNull<[u8]>", align 8, !svf !0
  %0 = alloca i64, align 8, !svf !0
  %align.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i64, align 8
  %self = alloca ptr, align 8
  %_4 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %self.dbg.spill, align 8, !dbg !597
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !623, metadata !DIExpression()), !dbg !597
  store i64 %size, ptr %size.dbg.spill, align 8, !dbg !597
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !584, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !627, metadata !DIExpression()), !dbg !632
  store i64 %align, ptr %align.dbg.spill, align 8, !dbg !597
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !585, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !631, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !636, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !642, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata ptr %align.dbg.spill, metadata !649, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !586, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !624, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata ptr %self, metadata !658, metadata !DIExpression()), !dbg !668
  br label %bb3, !dbg !678, !svf !0

bb3:                                              ; preds = %start
  %1 = call i64 @llvm.ctpop.i64(i64 %align), !dbg !654, !svf !0
  store i64 %1, ptr %0, align 8, !dbg !654, !svf !0
  %_12 = load i64, ptr %0, align 8, !dbg !654, !noundef !100, !svf !0
  %_11 = trunc i64 %_12 to i32, !dbg !654, !svf !0
  %2 = icmp eq i32 %_11, 1, !dbg !679, !svf !0
  br i1 %2, label %bb4, label %bb5, !dbg !679, !svf !0

bb4:                                              ; preds = %bb3
  br label %bb6, !dbg !678, !svf !0

bb5:                                              ; preds = %bb3
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hc4958c42bb3d12caE(ptr align 1 @alloc_c4b1ee8325c854da080be0f8139b99b7, i64 48) #11, !dbg !678, !svf !0
  br label %UnifiedUnreachableBlock

bb6:                                              ; preds = %bb4
  %3 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !680, !svf !0
  store i64 %size, ptr %3, align 8, !dbg !680, !svf !0
  store i64 %align, ptr %layout, align 8, !dbg !680, !svf !0
  %4 = load i64, ptr %layout, align 8, !dbg !681, !range !576, !noundef !100, !svf !0
  %5 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !681, !svf !0
  %6 = load i64, ptr %5, align 8, !dbg !681, !noundef !100, !svf !0
; call alloc::alloc::Global::alloc_impl
  %7 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hf58900cdb76f486aE(ptr align 1 @alloc_513570631223a12912d85da2bec3b15a, i64 %4, i64 %6, i1 zeroext false), !dbg !681, !svf !0
  %8 = extractvalue { ptr, i64 } %7, 0, !dbg !681, !svf !0
  %9 = extractvalue { ptr, i64 } %7, 1, !dbg !681, !svf !0
  store ptr %8, ptr %_4, align 8, !dbg !681, !svf !0
  %10 = getelementptr inbounds i8, ptr %_4, i64 8, !dbg !681, !svf !0
  store i64 %9, ptr %10, align 8, !dbg !681, !svf !0
  %11 = load ptr, ptr %_4, align 8, !dbg !682, !noundef !100, !svf !0
  %12 = ptrtoint ptr %11 to i64, !dbg !682, !svf !0
  %13 = icmp eq i64 %12, 0, !dbg !682, !svf !0
  %_5 = select i1 %13, i64 1, i64 0, !dbg !682, !svf !0
  %14 = icmp eq i64 %_5, 0, !dbg !683, !svf !0
  br i1 %14, label %bb2, label %bb1, !dbg !683, !svf !0

bb2:                                              ; preds = %bb6
  %ptr.0 = load ptr, ptr %_4, align 8, !dbg !684, !nonnull !100, !noundef !100, !svf !0
  %15 = getelementptr inbounds i8, ptr %_4, i64 8, !dbg !684, !svf !0
  %ptr.1 = load i64, ptr %15, align 8, !dbg !684, !noundef !100, !svf !0
  store ptr %ptr.0, ptr %ptr.dbg.spill, align 8, !dbg !684, !svf !0
  %16 = getelementptr inbounds i8, ptr %ptr.dbg.spill, i64 8, !dbg !684, !svf !0
  store i64 %ptr.1, ptr %16, align 8, !dbg !684, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !588, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !676, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !696, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !705, metadata !DIExpression()), !dbg !716
  store ptr %ptr.0, ptr %self, align 8, !dbg !718, !svf !0
  ret ptr %ptr.0, !dbg !719, !svf !0

bb1:                                              ; preds = %bb6
  %17 = load i64, ptr %layout, align 8, !dbg !720, !range !576, !noundef !100, !svf !0
  %18 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !720, !svf !0
  %19 = load i64, ptr %18, align 8, !dbg !720, !noundef !100, !svf !0
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17h4e7a037c40727429E(i64 %17, i64 %19) #15, !dbg !720, !svf !0
  br label %UnifiedUnreachableBlock

bb9:                                              ; No predecessors!
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %bb9, %bb1, %bb5
  unreachable
}

; alloc::alloc::alloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @_ZN5alloc5alloc5alloc17h2737db27504232eaE(i64 %0, i64 %1) unnamed_addr #1 !dbg !721 {
start:
  %self.dbg.spill2 = alloca i64, align 8, !svf !0
  %self.dbg.spill1 = alloca ptr, align 8, !svf !0
  %self.dbg.spill = alloca ptr, align 8, !svf !0
  %2 = alloca i8, align 1, !svf !0
  %_13 = alloca i64, align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  %src.dbg.spill = alloca ptr, align 8
  store ptr @__rust_no_alloc_shim_is_unstable, ptr %src.dbg.spill, align 8, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %src.dbg.spill, metadata !732, metadata !DIExpression()), !dbg !726
  store i64 %0, ptr %layout, align 8, !dbg !726
  %3 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !726
  store i64 %1, ptr %3, align 8, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !725, metadata !DIExpression()), !dbg !734
  br label %bb3, !dbg !735, !svf !0

bb3:                                              ; preds = %start
; call core::ptr::read_volatile::precondition_check
  call void @_ZN4core3ptr13read_volatile18precondition_check17ha1f992f53d954904E(ptr @__rust_no_alloc_shim_is_unstable, i64 1) #13, !dbg !735, !svf !0
  br label %bb4, !dbg !735, !svf !0

bb4:                                              ; preds = %bb3
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !dbg !736, !svf !0
  store i8 %4, ptr %2, align 1, !dbg !736, !svf !0
  %_2 = load i8, ptr %2, align 1, !dbg !736, !noundef !100, !svf !0
  store ptr %layout, ptr %self.dbg.spill, align 8, !dbg !737, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !738, metadata !DIExpression()), !dbg !746
  %5 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !748, !svf !0
  %_5 = load i64, ptr %5, align 8, !dbg !748, !noundef !100, !svf !0
  store ptr %layout, ptr %self.dbg.spill1, align 8, !dbg !749, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill1, metadata !750, metadata !DIExpression()), !dbg !755
  %self = load i64, ptr %layout, align 8, !dbg !757, !range !576, !noundef !100, !svf !0
  store i64 %self, ptr %self.dbg.spill2, align 8, !dbg !757, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill2, metadata !758, metadata !DIExpression()), !dbg !765
  store i64 %self, ptr %_13, align 8, !dbg !767, !svf !0
  %_14 = load i64, ptr %_13, align 8, !dbg !767, !range !576, !noundef !100, !svf !0
  %_15 = icmp uge i64 %_14, 1, !dbg !767, !svf !0
  %_16 = icmp ule i64 %_14, -9223372036854775808, !dbg !767, !svf !0
  %_17 = and i1 %_15, %_16, !dbg !767, !svf !0
  %_0 = call ptr @__rust_alloc(i64 %_5, i64 %_14) #13, !dbg !768, !svf !0
  ret ptr %_0, !dbg !769, !svf !0
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hf58900cdb76f486aE(ptr align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #1 !dbg !770 {
start:
  %ptr.dbg.spill23 = alloca { ptr, i64 }, align 8, !svf !0
  %data_pointer.dbg.spill = alloca ptr, align 8, !svf !0
  %data.dbg.spill = alloca ptr, align 8, !svf !0
  %ptr.dbg.spill22 = alloca ptr, align 8, !svf !0
  %v.dbg.spill20 = alloca ptr, align 8, !svf !0
  %v.dbg.spill = alloca ptr, align 8, !svf !0
  %ptr.dbg.spill18 = alloca ptr, align 8, !svf !0
  %self.dbg.spill16 = alloca i64, align 8, !svf !0
  %self.dbg.spill14 = alloca ptr, align 8, !svf !0
  %self.dbg.spill13 = alloca ptr, align 8, !svf !0
  %ptr.dbg.spill = alloca ptr, align 8, !svf !0
  %addr.dbg.spill = alloca i64, align 8, !svf !0
  %self.dbg.spill11 = alloca i64, align 8, !svf !0
  %self.dbg.spill9 = alloca ptr, align 8, !svf !0
  %size.dbg.spill = alloca i64, align 8, !svf !0
  %self.dbg.spill8 = alloca ptr, align 8, !svf !0
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
  call void @llvm.dbg.declare(metadata ptr %residual.dbg.spill, metadata !784, metadata !DIExpression()), !dbg !806
  store i64 0, ptr %len.dbg.spill, align 8, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %len.dbg.spill, metadata !815, metadata !DIExpression()), !dbg !807
  store i64 0, ptr %len.dbg.spill1, align 8, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %len.dbg.spill1, metadata !827, metadata !DIExpression()), !dbg !820
  store i64 0, ptr %metadata.dbg.spill, align 8, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %metadata.dbg.spill, metadata !841, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.declare(metadata ptr %err.dbg.spill, metadata !846, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.declare(metadata ptr %e.dbg.spill, metadata !886, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.declare(metadata ptr %residual.dbg.spill2, metadata !918, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata ptr %e.dbg.spill3, metadata !933, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata ptr %t.dbg.spill, metadata !940, metadata !DIExpression()), !dbg !950
  store i64 %0, ptr %layout, align 8, !dbg !950
  %2 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !950
  store i64 %1, ptr %2, align 8, !dbg !950
  store ptr %self, ptr %self.dbg.spill, align 8, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !775, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !776, metadata !DIExpression()), !dbg !953
  %3 = zext i1 %zeroed to i8, !dbg !950
  store i8 %3, ptr %zeroed.dbg.spill, align 1, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %zeroed.dbg.spill, metadata !777, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.declare(metadata ptr %data, metadata !814, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.declare(metadata ptr %data, metadata !956, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.declare(metadata ptr %raw_ptr, metadata !780, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.declare(metadata ptr %layout4, metadata !965, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata ptr %self5, metadata !913, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.declare(metadata ptr %self6, metadata !881, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !973, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.declare(metadata ptr %data7, metadata !826, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.declare(metadata ptr %data7, metadata !985, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata ptr %data_pointer, metadata !840, metadata !DIExpression()), !dbg !995
  store ptr %layout, ptr %self.dbg.spill8, align 8, !dbg !996, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill8, metadata !997, metadata !DIExpression()), !dbg !1003
  %4 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1005, !svf !0
  %size = load i64, ptr %4, align 8, !dbg !1005, !noundef !100, !svf !0
  store i64 %size, ptr %size.dbg.spill, align 8, !dbg !1005, !svf !0
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !778, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !818, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !830, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %size.dbg.spill, metadata !844, metadata !DIExpression()), !dbg !1011
  %5 = icmp eq i64 %size, 0, !dbg !1013, !svf !0
  br i1 %5, label %bb2, label %bb1, !dbg !1013, !svf !0

bb2:                                              ; preds = %start
  store ptr %layout, ptr %self.dbg.spill9, align 8, !dbg !1014, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill9, metadata !1015, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill9, metadata !1024, metadata !DIExpression()), !dbg !1030
  %self10 = load i64, ptr %layout, align 8, !dbg !1032, !range !576, !noundef !100, !svf !0
  store i64 %self10, ptr %self.dbg.spill11, align 8, !dbg !1032, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill11, metadata !1033, metadata !DIExpression()), !dbg !1039
  store i64 %self10, ptr %_21, align 8, !dbg !1041, !svf !0
  %_22 = load i64, ptr %_21, align 8, !dbg !1041, !range !576, !noundef !100, !svf !0
  %_23 = icmp uge i64 %_22, 1, !dbg !1041, !svf !0
  %_24 = icmp ule i64 %_22, -9223372036854775808, !dbg !1041, !svf !0
  %_25 = and i1 %_23, %_24, !dbg !1041, !svf !0
  store i64 %_22, ptr %addr.dbg.spill, align 8, !dbg !1041, !svf !0
  call void @llvm.dbg.declare(metadata ptr %addr.dbg.spill, metadata !1042, metadata !DIExpression()), !dbg !1048
  %ptr12 = inttoptr i64 %_22 to ptr, !dbg !1050, !svf !0
  store ptr %ptr12, ptr %ptr.dbg.spill, align 8, !dbg !1050, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1051, metadata !DIExpression()), !dbg !1060
  br label %bb8, !dbg !1062, !svf !0

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4, !dbg !1063, !svf !0

bb8:                                              ; preds = %bb2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h0d594ad5908f6c4fE"(ptr %ptr12) #13, !dbg !1062, !svf !0
  store ptr %ptr12, ptr %_29, align 8, !dbg !1064, !svf !0
  %6 = load ptr, ptr %_29, align 8, !dbg !1065, !noundef !100, !svf !0
  store ptr %6, ptr %data, align 8, !dbg !1065, !svf !0
  store ptr %ptr12, ptr %data7, align 8, !dbg !1066, !svf !0
  store ptr %ptr12, ptr %data_pointer, align 8, !dbg !1067, !svf !0
  store ptr %ptr12, ptr %_35, align 8, !dbg !1068, !svf !0
  %7 = load ptr, ptr %_35, align 8, !dbg !1069, !noundef !100, !svf !0
  store ptr %7, ptr %_34, align 8, !dbg !1069, !svf !0
  %8 = getelementptr inbounds i8, ptr %_34, i64 8, !dbg !1069, !svf !0
  store i64 0, ptr %8, align 8, !dbg !1069, !svf !0
  %9 = load ptr, ptr %_34, align 8, !dbg !1070, !noundef !100, !svf !0
  %10 = getelementptr inbounds i8, ptr %_34, i64 8, !dbg !1070, !svf !0
  %11 = load i64, ptr %10, align 8, !dbg !1070, !noundef !100, !svf !0
  store ptr %9, ptr %_33, align 8, !dbg !1070, !svf !0
  %12 = getelementptr inbounds i8, ptr %_33, i64 8, !dbg !1070, !svf !0
  store i64 %11, ptr %12, align 8, !dbg !1070, !svf !0
  %13 = load ptr, ptr %_33, align 8, !dbg !1070, !noundef !100, !svf !0
  %14 = getelementptr inbounds i8, ptr %_33, i64 8, !dbg !1070, !svf !0
  %15 = load i64, ptr %14, align 8, !dbg !1070, !noundef !100, !svf !0
  store ptr %13, ptr %ptr, align 8, !dbg !1070, !svf !0
  %16 = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !1070, !svf !0
  store i64 %15, ptr %16, align 8, !dbg !1070, !svf !0
  br label %bb10, !dbg !1071, !svf !0

bb9:                                              ; No predecessors!
  store ptr %ptr12, ptr %_29, align 8, !dbg !1064, !svf !0
  %17 = load ptr, ptr %_29, align 8, !dbg !1065, !noundef !100, !svf !0
  store ptr %17, ptr %data, align 8, !dbg !1065, !svf !0
  store ptr %ptr12, ptr %data7, align 8, !dbg !1066, !svf !0
  store ptr %ptr12, ptr %data_pointer, align 8, !dbg !1067, !svf !0
  store ptr %ptr12, ptr %_35, align 8, !dbg !1068, !svf !0
  %18 = load ptr, ptr %_35, align 8, !dbg !1069, !noundef !100, !svf !0
  store ptr %18, ptr %_34, align 8, !dbg !1069, !svf !0
  %19 = getelementptr inbounds i8, ptr %_34, i64 8, !dbg !1069, !svf !0
  store i64 0, ptr %19, align 8, !dbg !1069, !svf !0
  %20 = load ptr, ptr %_34, align 8, !dbg !1070, !noundef !100, !svf !0
  %21 = getelementptr inbounds i8, ptr %_34, i64 8, !dbg !1070, !svf !0
  %22 = load i64, ptr %21, align 8, !dbg !1070, !noundef !100, !svf !0
  store ptr %20, ptr %_33, align 8, !dbg !1070, !svf !0
  %23 = getelementptr inbounds i8, ptr %_33, i64 8, !dbg !1070, !svf !0
  store i64 %22, ptr %23, align 8, !dbg !1070, !svf !0
  %24 = load ptr, ptr %_33, align 8, !dbg !1070, !noundef !100, !svf !0
  %25 = getelementptr inbounds i8, ptr %_33, i64 8, !dbg !1070, !svf !0
  %26 = load i64, ptr %25, align 8, !dbg !1070, !noundef !100, !svf !0
  store ptr %24, ptr %ptr, align 8, !dbg !1070, !svf !0
  %27 = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !1070, !svf !0
  store i64 %26, ptr %27, align 8, !dbg !1070, !svf !0
  br label %bb10, !dbg !1071, !svf !0

bb10:                                             ; preds = %bb8, %bb9
  %_37 = load ptr, ptr %ptr, align 8, !dbg !1072, !noundef !100, !svf !0
  %28 = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !1072, !svf !0
  %29 = load i64, ptr %28, align 8, !dbg !1072, !noundef !100, !svf !0
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h0d594ad5908f6c4fE"(ptr %_37) #13, !dbg !1071, !svf !0
  br label %bb11, !dbg !1071, !svf !0

bb11:                                             ; preds = %bb10
  %_38.0 = load ptr, ptr %ptr, align 8, !dbg !1073, !noundef !100, !svf !0
  %30 = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !1073, !svf !0
  %_38.1 = load i64, ptr %30, align 8, !dbg !1073, !noundef !100, !svf !0
  store ptr %_38.0, ptr %_6, align 8, !dbg !1074, !svf !0
  %31 = getelementptr inbounds i8, ptr %_6, i64 8, !dbg !1074, !svf !0
  store i64 %_38.1, ptr %31, align 8, !dbg !1074, !svf !0
  %32 = load ptr, ptr %_6, align 8, !dbg !1075, !nonnull !100, !noundef !100, !svf !0
  %33 = getelementptr inbounds i8, ptr %_6, i64 8, !dbg !1075, !svf !0
  %34 = load i64, ptr %33, align 8, !dbg !1075, !noundef !100, !svf !0
  store ptr %32, ptr %_0, align 8, !dbg !1075, !svf !0
  %35 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !1075, !svf !0
  store i64 %34, ptr %35, align 8, !dbg !1075, !svf !0
  br label %bb7, !dbg !1076, !svf !0

bb7:                                              ; preds = %bb18, %bb13, %bb11
  %36 = load ptr, ptr %_0, align 8, !dbg !1077, !noundef !100, !svf !0
  %37 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !1077, !svf !0
  %38 = load i64, ptr %37, align 8, !dbg !1077, !svf !0
  %39 = insertvalue { ptr, i64 } poison, ptr %36, 0, !dbg !1077, !svf !0
  %40 = insertvalue { ptr, i64 } %39, i64 %38, 1, !dbg !1077, !svf !0
  ret { ptr, i64 } %40, !dbg !1077, !svf !0

bb4:                                              ; preds = %bb1
  %_11.0 = load i64, ptr %layout, align 8, !dbg !1078, !range !576, !noundef !100, !svf !0
  %41 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1078, !svf !0
  %_11.1 = load i64, ptr %41, align 8, !dbg !1078, !noundef !100, !svf !0
; call alloc::alloc::alloc
  %42 = call ptr @_ZN5alloc5alloc5alloc17h2737db27504232eaE(i64 %_11.0, i64 %_11.1), !dbg !1079, !svf !0
  store ptr %42, ptr %raw_ptr, align 8, !dbg !1079, !svf !0
  br label %bb6, !dbg !1080, !svf !0

bb3:                                              ; preds = %bb1
  %43 = load i64, ptr %layout, align 8, !dbg !1081, !range !576, !noundef !100, !svf !0
  %44 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1081, !svf !0
  %45 = load i64, ptr %44, align 8, !dbg !1081, !noundef !100, !svf !0
  store i64 %43, ptr %layout4, align 8, !dbg !1081, !svf !0
  %46 = getelementptr inbounds i8, ptr %layout4, i64 8, !dbg !1081, !svf !0
  store i64 %45, ptr %46, align 8, !dbg !1081, !svf !0
  store ptr %layout4, ptr %self.dbg.spill13, align 8, !dbg !1082, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill13, metadata !1001, metadata !DIExpression()), !dbg !1083
  %47 = getelementptr inbounds i8, ptr %layout4, i64 8, !dbg !1085, !svf !0
  %_39 = load i64, ptr %47, align 8, !dbg !1085, !noundef !100, !svf !0
  store ptr %layout4, ptr %self.dbg.spill14, align 8, !dbg !1086, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill14, metadata !1028, metadata !DIExpression()), !dbg !1087
  %self15 = load i64, ptr %layout4, align 8, !dbg !1089, !range !576, !noundef !100, !svf !0
  store i64 %self15, ptr %self.dbg.spill16, align 8, !dbg !1089, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill16, metadata !1037, metadata !DIExpression()), !dbg !1090
  store i64 %self15, ptr %_44, align 8, !dbg !1092, !svf !0
  %_45 = load i64, ptr %_44, align 8, !dbg !1092, !range !576, !noundef !100, !svf !0
  %_46 = icmp uge i64 %_45, 1, !dbg !1092, !svf !0
  %_47 = icmp ule i64 %_45, -9223372036854775808, !dbg !1092, !svf !0
  %_48 = and i1 %_46, %_47, !dbg !1092, !svf !0
  %48 = call ptr @__rust_alloc_zeroed(i64 %_39, i64 %_45) #13, !dbg !1093, !svf !0
  store ptr %48, ptr %raw_ptr, align 8, !dbg !1093, !svf !0
  br label %bb6, !dbg !1080, !svf !0

bb6:                                              ; preds = %bb3, %bb4
  %ptr17 = load ptr, ptr %raw_ptr, align 8, !dbg !1094, !noundef !100, !svf !0
  store ptr %ptr17, ptr %ptr.dbg.spill18, align 8, !dbg !1094, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1095, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1103, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1109, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1115, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !989, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill18, metadata !1058, metadata !DIExpression()), !dbg !1123
  %_50 = ptrtoint ptr %ptr17 to i64, !dbg !1125, !svf !0
  %49 = icmp eq i64 %_50, 0, !dbg !1126, !svf !0
  br i1 %49, label %bb13, label %bb14, !dbg !1126, !svf !0

bb13:                                             ; preds = %bb6
  store ptr null, ptr %self6, align 8, !dbg !1127, !svf !0
  store ptr null, ptr %self5, align 8, !dbg !1128, !svf !0
  %50 = load ptr, ptr @0, align 8, !dbg !1129, !noundef !100, !svf !0
  %51 = getelementptr inbounds i8, ptr @0, i64 8
  %52 = load i64, ptr %51, align 8, !dbg !1129, !svf !0
  store ptr %50, ptr %_0, align 8, !dbg !1129, !svf !0
  %53 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !1129, !svf !0
  store i64 %52, ptr %53, align 8, !dbg !1129, !svf !0
  br label %bb7, !dbg !1077, !svf !0

bb14:                                             ; preds = %bb6
  br label %bb15, !dbg !1130, !svf !0

bb15:                                             ; preds = %bb14
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h0d594ad5908f6c4fE"(ptr %ptr17) #13, !dbg !1130, !svf !0
  br label %bb16, !dbg !1130, !svf !0

bb16:                                             ; preds = %bb15
  store ptr %ptr17, ptr %_49, align 8, !dbg !1131, !svf !0
  %54 = load ptr, ptr %_49, align 8, !dbg !1132, !nonnull !100, !noundef !100, !svf !0
  store ptr %54, ptr %self6, align 8, !dbg !1132, !svf !0
  %v = load ptr, ptr %self6, align 8, !dbg !1133, !nonnull !100, !noundef !100, !svf !0
  store ptr %v, ptr %v.dbg.spill, align 8, !dbg !1133, !svf !0
  call void @llvm.dbg.declare(metadata ptr %v.dbg.spill, metadata !882, metadata !DIExpression()), !dbg !1134
  store ptr %v, ptr %self5, align 8, !dbg !1135, !svf !0
  %v19 = load ptr, ptr %self5, align 8, !dbg !1136, !nonnull !100, !noundef !100, !svf !0
  store ptr %v19, ptr %v.dbg.spill20, align 8, !dbg !1136, !svf !0
  call void @llvm.dbg.declare(metadata ptr %v.dbg.spill20, metadata !914, metadata !DIExpression()), !dbg !1137
  store ptr %v19, ptr %_12, align 8, !dbg !1138, !svf !0
  %ptr21 = load ptr, ptr %_12, align 8, !dbg !917, !nonnull !100, !noundef !100, !svf !0
  store ptr %ptr21, ptr %ptr.dbg.spill22, align 8, !dbg !917, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill22, metadata !782, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill22, metadata !804, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill22, metadata !816, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill22, metadata !960, metadata !DIExpression()), !dbg !1142
  store ptr %ptr21, ptr %data.dbg.spill, align 8, !dbg !1144, !svf !0
  call void @llvm.dbg.declare(metadata ptr %data.dbg.spill, metadata !828, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %data.dbg.spill, metadata !991, metadata !DIExpression()), !dbg !1146
  store ptr %ptr21, ptr %data_pointer.dbg.spill, align 8, !dbg !1148, !svf !0
  call void @llvm.dbg.declare(metadata ptr %data_pointer.dbg.spill, metadata !842, metadata !DIExpression()), !dbg !1149
  store ptr %ptr21, ptr %_62, align 8, !dbg !1150, !svf !0
  %55 = getelementptr inbounds i8, ptr %_62, i64 8, !dbg !1150, !svf !0
  store i64 %size, ptr %55, align 8, !dbg !1150, !svf !0
  %56 = load ptr, ptr %_62, align 8, !dbg !1151, !noundef !100, !svf !0
  %57 = getelementptr inbounds i8, ptr %_62, i64 8, !dbg !1151, !svf !0
  %58 = load i64, ptr %57, align 8, !dbg !1151, !noundef !100, !svf !0
  store ptr %56, ptr %_61, align 8, !dbg !1151, !svf !0
  %59 = getelementptr inbounds i8, ptr %_61, i64 8, !dbg !1151, !svf !0
  store i64 %58, ptr %59, align 8, !dbg !1151, !svf !0
  %ptr.0 = load ptr, ptr %_61, align 8, !dbg !1151, !noundef !100, !svf !0
  %60 = getelementptr inbounds i8, ptr %_61, i64 8, !dbg !1151, !svf !0
  %ptr.1 = load i64, ptr %60, align 8, !dbg !1151, !noundef !100, !svf !0
  store ptr %ptr.0, ptr %ptr.dbg.spill23, align 8, !dbg !1151, !svf !0
  %61 = getelementptr inbounds i8, ptr %ptr.dbg.spill23, i64 8, !dbg !1151, !svf !0
  store i64 %ptr.1, ptr %61, align 8, !dbg !1151, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill23, metadata !980, metadata !DIExpression()), !dbg !1152
  br label %bb17, !dbg !1154, !svf !0

bb17:                                             ; preds = %bb16
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h0d594ad5908f6c4fE"(ptr %ptr.0) #13, !dbg !1154, !svf !0
  br label %bb18, !dbg !1154, !svf !0

bb18:                                             ; preds = %bb17
  store ptr %ptr.0, ptr %_17, align 8, !dbg !1155, !svf !0
  %62 = getelementptr inbounds i8, ptr %_17, i64 8, !dbg !1155, !svf !0
  store i64 %ptr.1, ptr %62, align 8, !dbg !1155, !svf !0
  %63 = load ptr, ptr %_17, align 8, !dbg !1156, !nonnull !100, !noundef !100, !svf !0
  %64 = getelementptr inbounds i8, ptr %_17, i64 8, !dbg !1156, !svf !0
  %65 = load i64, ptr %64, align 8, !dbg !1156, !noundef !100, !svf !0
  store ptr %63, ptr %_0, align 8, !dbg !1156, !svf !0
  %66 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !1156, !svf !0
  store i64 %65, ptr %66, align 8, !dbg !1156, !svf !0
  br label %bb7, !dbg !1157, !svf !0
}

; alloc::boxed::Box<T,A>::into_inner
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$10into_inner17h9c607af038d622fdE"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1158 {
start:
  %1 = alloca { ptr, i32, [1 x i32] }, align 8
  %boxed = alloca ptr, align 8
  store ptr %0, ptr %boxed, align 8
  call void @llvm.dbg.declare(metadata ptr %boxed, metadata !1165, metadata !DIExpression()), !dbg !1168
  %_4 = load ptr, ptr %boxed, align 8, !dbg !1169, !noundef !100, !svf !0
  %_0 = load i64, ptr %_4, align 8, !dbg !1169, !noundef !100, !svf !0
; invoke <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f74182a0b90b0d9E"(ptr align 8 %boxed)
          to label %bb4 unwind label %cleanup, !dbg !1170, !svf !0

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !dbg !1171, !noundef !100, !svf !0
  %3 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1171, !svf !0
  %4 = load i32, ptr %3, align 8, !dbg !1171, !noundef !100, !svf !0
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0, !dbg !1171, !svf !0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1, !dbg !1171, !svf !0
  resume { ptr, i32 } %6, !dbg !1171, !svf !0

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
  ret i64 %_0, !dbg !1172, !svf !0
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h9f31db83a5033524E"(ptr align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #1 !dbg !1173 {
start:
  %self.dbg.spill7 = alloca i64, align 8, !svf !0
  %self.dbg.spill5 = alloca ptr, align 8, !svf !0
  %self.dbg.spill4 = alloca ptr, align 8, !svf !0
  %ptr.dbg.spill3 = alloca ptr, align 8, !svf !0
  %self.dbg.spill2 = alloca ptr, align 8, !svf !0
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_14 = alloca i64, align 8
  %layout1 = alloca %"core::alloc::layout::Layout", align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !1177, metadata !DIExpression()), !dbg !1180
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1178, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1182, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !1179, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %layout1, metadata !1189, metadata !DIExpression()), !dbg !1196
  store ptr %layout, ptr %self.dbg.spill2, align 8, !dbg !1198, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill2, metadata !1199, metadata !DIExpression()), !dbg !1205
  %3 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1207, !svf !0
  %_4 = load i64, ptr %3, align 8, !dbg !1207, !noundef !100, !svf !0
  %4 = icmp eq i64 %_4, 0, !dbg !1198, !svf !0
  br i1 %4, label %bb2, label %bb1, !dbg !1198, !svf !0

bb2:                                              ; preds = %start
  br label %bb3, !dbg !1208, !svf !0

bb1:                                              ; preds = %start
  store ptr %ptr, ptr %ptr.dbg.spill3, align 8, !dbg !1209, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill3, metadata !1195, metadata !DIExpression()), !dbg !1210
  %5 = load i64, ptr %layout, align 8, !dbg !1211, !range !576, !noundef !100, !svf !0
  %6 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1211, !svf !0
  %7 = load i64, ptr %6, align 8, !dbg !1211, !noundef !100, !svf !0
  store i64 %5, ptr %layout1, align 8, !dbg !1211, !svf !0
  %8 = getelementptr inbounds i8, ptr %layout1, i64 8, !dbg !1211, !svf !0
  store i64 %7, ptr %8, align 8, !dbg !1211, !svf !0
  store ptr %layout1, ptr %self.dbg.spill4, align 8, !dbg !1212, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill4, metadata !1203, metadata !DIExpression()), !dbg !1213
  %9 = getelementptr inbounds i8, ptr %layout1, i64 8, !dbg !1215, !svf !0
  %_9 = load i64, ptr %9, align 8, !dbg !1215, !noundef !100, !svf !0
  store ptr %layout1, ptr %self.dbg.spill5, align 8, !dbg !1216, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill5, metadata !1217, metadata !DIExpression()), !dbg !1221
  %self6 = load i64, ptr %layout1, align 8, !dbg !1223, !range !576, !noundef !100, !svf !0
  store i64 %self6, ptr %self.dbg.spill7, align 8, !dbg !1223, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill7, metadata !1224, metadata !DIExpression()), !dbg !1228
  store i64 %self6, ptr %_14, align 8, !dbg !1230, !svf !0
  %_15 = load i64, ptr %_14, align 8, !dbg !1230, !range !576, !noundef !100, !svf !0
  %_16 = icmp uge i64 %_15, 1, !dbg !1230, !svf !0
  %_17 = icmp ule i64 %_15, -9223372036854775808, !dbg !1230, !svf !0
  %_18 = and i1 %_16, %_17, !dbg !1230, !svf !0
  call void @__rust_dealloc(ptr %ptr, i64 %_9, i64 %_15) #13, !dbg !1231, !svf !0
  br label %bb3, !dbg !1208, !svf !0

bb3:                                              ; preds = %bb1, %bb2
  ret void, !dbg !1232, !svf !0
}

; <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f74182a0b90b0d9E"(ptr align 8 %self) unnamed_addr #1 !dbg !1233 {
start:
  %self.dbg.spill1 = alloca ptr, align 8, !svf !0
  %ptr.dbg.spill = alloca ptr, align 8, !svf !0
  %self.dbg.spill = alloca ptr, align 8
  %unique = alloca ptr, align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !1239, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.declare(metadata ptr %layout, metadata !1252, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.declare(metadata ptr %unique, metadata !1256, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %unique, metadata !1270, metadata !DIExpression()), !dbg !1276
  %ptr = load ptr, ptr %self, align 8, !dbg !1278, !nonnull !100, !noundef !100, !svf !0
  store ptr %ptr, ptr %ptr.dbg.spill, align 8, !dbg !1278, !svf !0
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1240, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1280, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1289, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1300, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1310, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.declare(metadata ptr %ptr.dbg.spill, metadata !1296, metadata !DIExpression()), !dbg !1319
; call core::alloc::layout::Layout::for_value_raw
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout13for_value_raw17he1478a1eb52eda4eE(ptr %ptr), !dbg !1321, !svf !0
  %1 = extractvalue { i64, i64 } %0, 0, !dbg !1321, !svf !0
  %2 = extractvalue { i64, i64 } %0, 1, !dbg !1321, !svf !0
  store i64 %1, ptr %layout, align 8, !dbg !1321, !svf !0
  %3 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1321, !svf !0
  store i64 %2, ptr %3, align 8, !dbg !1321, !svf !0
  store ptr %layout, ptr %self.dbg.spill1, align 8, !dbg !1322, !svf !0
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill1, metadata !1323, metadata !DIExpression()), !dbg !1327
  %4 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1329, !svf !0
  %_3 = load i64, ptr %4, align 8, !dbg !1329, !noundef !100, !svf !0
  %5 = icmp eq i64 %_3, 0, !dbg !1322, !svf !0
  br i1 %5, label %bb4, label %bb2, !dbg !1322, !svf !0

bb4:                                              ; preds = %start
  br label %bb5, !dbg !1330, !svf !0

bb2:                                              ; preds = %start
  %_6 = getelementptr i8, ptr %self, i64 8, !dbg !1331, !svf !0
  store ptr %ptr, ptr %unique, align 8, !dbg !1332, !svf !0
  %_7.0 = load i64, ptr %layout, align 8, !dbg !1333, !range !576, !noundef !100, !svf !0
  %6 = getelementptr inbounds i8, ptr %layout, i64 8, !dbg !1333, !svf !0
  %_7.1 = load i64, ptr %6, align 8, !dbg !1333, !noundef !100, !svf !0
  %7 = load ptr, ptr %unique, align 8, !dbg !1331, !nonnull !100, !noundef !100, !svf !0
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h9f31db83a5033524E"(ptr align 1 %_6, ptr %7, i64 %_7.0, i64 %_7.1), !dbg !1331, !svf !0
  br label %bb5, !dbg !1330, !svf !0

bb5:                                              ; preds = %bb2, %bb4
  ret void, !dbg !1334, !svf !0
}

; <alloc::boxed::Box<T,A> as core::convert::AsMut<T>>::as_mut
; Function Attrs: nonlazybind uwtable
define align 8 ptr @"_ZN80_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$T$GT$$GT$6as_mut17h2957cb490726edbbE"(ptr align 8 %self) unnamed_addr #2 !dbg !1335 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !1341, metadata !DIExpression()), !dbg !1342
  %_2 = load ptr, ptr %self, align 8, !dbg !1343, !nonnull !100, !align !492, !noundef !100, !svf !0
  ret ptr %_2, !dbg !1344, !svf !0
}

; lib_demo::foo
; Function Attrs: nonlazybind uwtable
define i64 @_ZN8lib_demo3foo17he7395063e1b497eaE() unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1345 {
start:
  %0 = alloca { ptr, i32, [1 x i32] }, align 8
  %x.dbg.spill.i = alloca i64, align 8
  %1 = alloca { ptr, i32, [1 x i32] }, align 8
  %_7 = alloca i8, align 1
  %_6 = alloca ptr, align 8, !unsafety !1355
  %_5 = alloca ptr, align 8, !unsafety !1355
  %_4 = alloca {}, align 1, !unsafety !1355
  %_3 = alloca ptr, align 8, !unsafety !1355
  %p = alloca ptr, align 8, !unsafety !1355
  %b = alloca ptr, align 8, !unsafety !1355
  call void @llvm.dbg.declare(metadata ptr %b, metadata !1351, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1353, metadata !DIExpression()), !dbg !1357
  store i8 1, ptr %_7, align 1, !dbg !1358, !svf !0
  store i64 5, ptr %x.dbg.spill.i, align 8
  call void @llvm.dbg.declare(metadata ptr %x.dbg.spill.i, metadata !1359, metadata !DIExpression()), !dbg !1365
; invoke alloc::alloc::exchange_malloc
  %_4.i = invoke ptr @_ZN5alloc5alloc15exchange_malloc17h4762b1c233d365c1E(i64 8, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3b880e2c45463fa8E.exit" unwind label %cleanup.i, !dbg !1367, !svf !0

cleanup.i:                                        ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8, !dbg !1368, !noundef !100, !svf !0
  %7 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1368, !svf !0
  %8 = load i32, ptr %7, align 8, !dbg !1368, !noundef !100, !svf !0
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0, !dbg !1368, !svf !0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1, !dbg !1368, !svf !0
  resume { ptr, i32 } %10, !dbg !1368, !svf !0

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3b880e2c45463fa8E.exit": ; preds = %start
  store i64 5, ptr %_4.i, align 8, !dbg !1369, !svf !0
  store ptr %_4.i, ptr %b, align 8, !dbg !1358, !svf !0
  store ptr %b, ptr %_3, align 8, !dbg !1370, !svf !0
  %11 = load ptr, ptr %_3, align 8, !dbg !1370, !nonnull !100, !align !492, !noundef !100, !svf !0
; invoke <alloc::boxed::Box<T,A> as core::convert::AsMut<T>>::as_mut
  %12 = invoke align 8 ptr @"_ZN80_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$T$GT$$GT$6as_mut17h2957cb490726edbbE"(ptr align 8 %11)
          to label %bb2 unwind label %cleanup, !dbg !1370, !svf !0

bb7:                                              ; preds = %cleanup
  %13 = load i8, ptr %_7, align 1, !dbg !1371, !range !1372, !noundef !100, !svf !0
  %14 = trunc i8 %13 to i1, !dbg !1371, !svf !0
  br i1 %14, label %bb6, label %bb5, !dbg !1371, !svf !0

cleanup:                                          ; preds = %bb3, %bb2, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3b880e2c45463fa8E.exit"
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  store ptr %16, ptr %1, align 8
  %18 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %17, ptr %18, align 8
  br label %bb7

bb2:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3b880e2c45463fa8E.exit"
  store ptr %12, ptr %p, align 8, !dbg !1370
  %19 = load ptr, ptr %p, align 8, !dbg !1373, !nonnull !100, !align !492, !noundef !100, !svf !0
  store ptr %19, ptr %_5, align 8, !dbg !1373, !svf !0
  %20 = load ptr, ptr %_5, align 8, !dbg !1374, !noundef !100, !svf !0
; invoke core::ptr::write_volatile
  invoke void @_ZN4core3ptr14write_volatile17h0e7369cb0d2385beE(ptr %20, i64 12)
          to label %bb3 unwind label %cleanup, !dbg !1374, !svf !0

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_7, align 1, !dbg !1375, !svf !0
  %21 = load ptr, ptr %b, align 8, !dbg !1375, !nonnull !100, !align !492, !noundef !100, !svf !0
  store ptr %21, ptr %_6, align 8, !dbg !1375, !svf !0
  %22 = load ptr, ptr %_6, align 8, !dbg !1376, !nonnull !100, !align !492, !noundef !100, !svf !0
; invoke alloc::boxed::Box<T,A>::into_inner
  %_0 = invoke i64 @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$10into_inner17h9c607af038d622fdE"(ptr align 8 %22)
          to label %bb4 unwind label %cleanup, !dbg !1376, !svf !0

bb4:                                              ; preds = %bb3
  ret i64 %_0, !dbg !1377, !svf !0

bb5:                                              ; preds = %bb6, %bb7
  %23 = load ptr, ptr %1, align 8, !dbg !1379, !noundef !100, !svf !0
  %24 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1379, !svf !0
  %25 = load i32, ptr %24, align 8, !dbg !1379, !noundef !100, !svf !0
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0, !dbg !1379, !svf !0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1, !dbg !1379, !svf !0
  resume { ptr, i32 } %27, !dbg !1379, !svf !0

bb6:                                              ; preds = %bb7
; invoke core::ptr::drop_in_place<alloc::boxed::Box<usize>>
  invoke void @"_ZN4core3ptr51drop_in_place$LT$alloc..boxed..Box$LT$usize$GT$$GT$17h11bda6379cf0c1d4E"(ptr align 8 %b) #14
          to label %bb5 unwind label %terminate, !dbg !1371, !svf !0

terminate:                                        ; preds = %bb6
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %29 = extractvalue { ptr, i32 } %28, 0
  %30 = extractvalue { ptr, i32 } %28, 1
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17hb420a79d57e7ecc0E() #12, !dbg !1379
  unreachable, !dbg !1379
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; core::panicking::panic_cannot_unwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h93cea82ef68559cdE() unnamed_addr #4

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking14panic_nounwind17hc4958c42bb3d12caE(ptr align 1, i64) unnamed_addr #4

; core::panicking::panic_in_cleanup
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17hb420a79d57e7ecc0E() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #5

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h807530e8eff4fee3E(ptr align 1, i64, ptr align 8) unnamed_addr #6

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h4f352d4cc44a40a9E(ptr align 8, ptr align 8) unnamed_addr #6

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h4e7a037c40727429E(i64, i64) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #10

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

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.dbg.cu = !{!6}

!0 = !{!"unsafe_ir"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"rustc version 1.78.0-nightly (ddb1102d4 2025-01-06)"}
!6 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !7, producer: "clang LLVM (rustc version 1.78.0-nightly (ddb1102d4 2025-01-06))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "src/lib.rs/@/4fzl2hrpgus5u2ge", directory: "/home/swli/rust-isolation/lib_demo")
!8 = !{!9, !20}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !11, file: !10, baseType: !14, size: 8, align: 8, flags: DIFlagEnumClass, elements: !15)
!10 = !DIFile(filename: "<unknown>", directory: "")
!11 = !DINamespace(name: "rt", scope: !12)
!12 = !DINamespace(name: "fmt", scope: !13)
!13 = !DINamespace(name: "core", scope: null)
!14 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "Left", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "Right", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "Center", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "Unknown", value: 3, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AlignmentEnum", scope: !21, file: !10, baseType: !23, size: 64, align: 64, flags: DIFlagEnumClass, elements: !24)
!21 = !DINamespace(name: "alignment", scope: !22)
!22 = !DINamespace(name: "ptr", scope: !13)
!23 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!25 = !DIEnumerator(name: "_Align1Shl0", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "_Align1Shl1", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "_Align1Shl2", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "_Align1Shl3", value: 8, isUnsigned: true)
!29 = !DIEnumerator(name: "_Align1Shl4", value: 16, isUnsigned: true)
!30 = !DIEnumerator(name: "_Align1Shl5", value: 32, isUnsigned: true)
!31 = !DIEnumerator(name: "_Align1Shl6", value: 64, isUnsigned: true)
!32 = !DIEnumerator(name: "_Align1Shl7", value: 128, isUnsigned: true)
!33 = !DIEnumerator(name: "_Align1Shl8", value: 256, isUnsigned: true)
!34 = !DIEnumerator(name: "_Align1Shl9", value: 512, isUnsigned: true)
!35 = !DIEnumerator(name: "_Align1Shl10", value: 1024, isUnsigned: true)
!36 = !DIEnumerator(name: "_Align1Shl11", value: 2048, isUnsigned: true)
!37 = !DIEnumerator(name: "_Align1Shl12", value: 4096, isUnsigned: true)
!38 = !DIEnumerator(name: "_Align1Shl13", value: 8192, isUnsigned: true)
!39 = !DIEnumerator(name: "_Align1Shl14", value: 16384, isUnsigned: true)
!40 = !DIEnumerator(name: "_Align1Shl15", value: 32768, isUnsigned: true)
!41 = !DIEnumerator(name: "_Align1Shl16", value: 65536, isUnsigned: true)
!42 = !DIEnumerator(name: "_Align1Shl17", value: 131072, isUnsigned: true)
!43 = !DIEnumerator(name: "_Align1Shl18", value: 262144, isUnsigned: true)
!44 = !DIEnumerator(name: "_Align1Shl19", value: 524288, isUnsigned: true)
!45 = !DIEnumerator(name: "_Align1Shl20", value: 1048576, isUnsigned: true)
!46 = !DIEnumerator(name: "_Align1Shl21", value: 2097152, isUnsigned: true)
!47 = !DIEnumerator(name: "_Align1Shl22", value: 4194304, isUnsigned: true)
!48 = !DIEnumerator(name: "_Align1Shl23", value: 8388608, isUnsigned: true)
!49 = !DIEnumerator(name: "_Align1Shl24", value: 16777216, isUnsigned: true)
!50 = !DIEnumerator(name: "_Align1Shl25", value: 33554432, isUnsigned: true)
!51 = !DIEnumerator(name: "_Align1Shl26", value: 67108864, isUnsigned: true)
!52 = !DIEnumerator(name: "_Align1Shl27", value: 134217728, isUnsigned: true)
!53 = !DIEnumerator(name: "_Align1Shl28", value: 268435456, isUnsigned: true)
!54 = !DIEnumerator(name: "_Align1Shl29", value: 536870912, isUnsigned: true)
!55 = !DIEnumerator(name: "_Align1Shl30", value: 1073741824, isUnsigned: true)
!56 = !DIEnumerator(name: "_Align1Shl31", value: 2147483648, isUnsigned: true)
!57 = !DIEnumerator(name: "_Align1Shl32", value: 4294967296, isUnsigned: true)
!58 = !DIEnumerator(name: "_Align1Shl33", value: 8589934592, isUnsigned: true)
!59 = !DIEnumerator(name: "_Align1Shl34", value: 17179869184, isUnsigned: true)
!60 = !DIEnumerator(name: "_Align1Shl35", value: 34359738368, isUnsigned: true)
!61 = !DIEnumerator(name: "_Align1Shl36", value: 68719476736, isUnsigned: true)
!62 = !DIEnumerator(name: "_Align1Shl37", value: 137438953472, isUnsigned: true)
!63 = !DIEnumerator(name: "_Align1Shl38", value: 274877906944, isUnsigned: true)
!64 = !DIEnumerator(name: "_Align1Shl39", value: 549755813888, isUnsigned: true)
!65 = !DIEnumerator(name: "_Align1Shl40", value: 1099511627776, isUnsigned: true)
!66 = !DIEnumerator(name: "_Align1Shl41", value: 2199023255552, isUnsigned: true)
!67 = !DIEnumerator(name: "_Align1Shl42", value: 4398046511104, isUnsigned: true)
!68 = !DIEnumerator(name: "_Align1Shl43", value: 8796093022208, isUnsigned: true)
!69 = !DIEnumerator(name: "_Align1Shl44", value: 17592186044416, isUnsigned: true)
!70 = !DIEnumerator(name: "_Align1Shl45", value: 35184372088832, isUnsigned: true)
!71 = !DIEnumerator(name: "_Align1Shl46", value: 70368744177664, isUnsigned: true)
!72 = !DIEnumerator(name: "_Align1Shl47", value: 140737488355328, isUnsigned: true)
!73 = !DIEnumerator(name: "_Align1Shl48", value: 281474976710656, isUnsigned: true)
!74 = !DIEnumerator(name: "_Align1Shl49", value: 562949953421312, isUnsigned: true)
!75 = !DIEnumerator(name: "_Align1Shl50", value: 1125899906842624, isUnsigned: true)
!76 = !DIEnumerator(name: "_Align1Shl51", value: 2251799813685248, isUnsigned: true)
!77 = !DIEnumerator(name: "_Align1Shl52", value: 4503599627370496, isUnsigned: true)
!78 = !DIEnumerator(name: "_Align1Shl53", value: 9007199254740992, isUnsigned: true)
!79 = !DIEnumerator(name: "_Align1Shl54", value: 18014398509481984, isUnsigned: true)
!80 = !DIEnumerator(name: "_Align1Shl55", value: 36028797018963968, isUnsigned: true)
!81 = !DIEnumerator(name: "_Align1Shl56", value: 72057594037927936, isUnsigned: true)
!82 = !DIEnumerator(name: "_Align1Shl57", value: 144115188075855872, isUnsigned: true)
!83 = !DIEnumerator(name: "_Align1Shl58", value: 288230376151711744, isUnsigned: true)
!84 = !DIEnumerator(name: "_Align1Shl59", value: 576460752303423488, isUnsigned: true)
!85 = !DIEnumerator(name: "_Align1Shl60", value: 1152921504606846976, isUnsigned: true)
!86 = !DIEnumerator(name: "_Align1Shl61", value: 2305843009213693952, isUnsigned: true)
!87 = !DIEnumerator(name: "_Align1Shl62", value: 4611686018427387904, isUnsigned: true)
!88 = !DIEnumerator(name: "_Align1Shl63", value: 9223372036854775808, isUnsigned: true)
!89 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr13read_volatile18precondition_check17ha1f992f53d954904E", scope: !91, file: !90, line: 2750, type: !92, scopeLine: 2750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !97)
!90 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/intrinsics.rs", directory: "", checksumkind: CSK_MD5, checksum: "73a2d69a11eab3673629d5815d0641c5")
!91 = !DINamespace(name: "read_volatile", scope: !22)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !94, !96}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!95 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!96 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!97 = !{!98, !99}
!98 = !DILocalVariable(name: "addr", arg: 1, scope: !89, file: !90, line: 2750, type: !94)
!99 = !DILocalVariable(name: "align", arg: 2, scope: !89, file: !90, line: 2750, type: !96)
!100 = !{}
!101 = !DILocation(line: 2750, column: 37, scope: !89)
!102 = !DILocalVariable(name: "ptr", arg: 1, scope: !103, file: !90, line: 2770, type: !94)
!103 = distinct !DILexicalBlock(scope: !104, file: !90, line: 2770, column: 1)
!104 = distinct !DISubprogram(name: "is_aligned_and_not_null", linkageName: "_ZN4core10intrinsics23is_aligned_and_not_null17h65b0325fdb1d87b6E", scope: !105, file: !90, line: 2770, type: !106, scopeLine: 2770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !109)
!105 = !DINamespace(name: "intrinsics", scope: !13)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !94, !96}
!108 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!109 = !{!102, !110}
!110 = !DILocalVariable(name: "align", arg: 2, scope: !103, file: !90, line: 2770, type: !96)
!111 = !DILocation(line: 2770, column: 39, scope: !103, inlinedAt: !112)
!112 = !DILocation(line: 1634, column: 18, scope: !113)
!113 = !DILexicalBlockFile(scope: !89, file: !114, discriminator: 0)
!114 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "a4cd7ca551038dd07afd86edb8fa6115")
!115 = !DILocalVariable(name: "self", arg: 1, scope: !116, file: !117, line: 35, type: !94)
!116 = distinct !DILexicalBlock(scope: !118, file: !117, line: 35, column: 5)
!117 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "b52bc9503d18b506848b8aac2cf7152e")
!118 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h22758dc361cd3c25E", scope: !119, file: !117, line: 35, type: !121, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !124, retainedNodes: !123)
!119 = !DINamespace(name: "{impl#0}", scope: !120)
!120 = !DINamespace(name: "const_ptr", scope: !22)
!121 = !DISubroutineType(types: !122)
!122 = !{!108, !94}
!123 = !{!115}
!124 = !{!125}
!125 = !DITemplateTypeParameter(name: "T", type: !95)
!126 = !DILocation(line: 35, column: 26, scope: !116, inlinedAt: !127)
!127 = !DILocation(line: 2771, column: 10, scope: !103, inlinedAt: !112)
!128 = !DILocation(line: 2770, column: 55, scope: !103, inlinedAt: !112)
!129 = !DILocation(line: 52, column: 37, scope: !116, inlinedAt: !127)
!130 = !DILocalVariable(name: "ptr", arg: 1, scope: !131, file: !117, line: 37, type: !136)
!131 = distinct !DILexicalBlock(scope: !132, file: !117, line: 37, column: 9)
!132 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null12runtime_impl17h3404399a72511871E", scope: !133, file: !117, line: 37, type: !134, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !137)
!133 = !DINamespace(name: "is_null", scope: !119)
!134 = !DISubroutineType(types: !135)
!135 = !{!108, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!137 = !{!130}
!138 = !DILocation(line: 37, column: 25, scope: !131, inlinedAt: !139)
!139 = !DILocation(line: 52, column: 18, scope: !116, inlinedAt: !127)
!140 = !DILocalVariable(name: "self", arg: 1, scope: !141, file: !117, line: 206, type: !136)
!141 = distinct !DILexicalBlock(scope: !142, file: !117, line: 206, column: 5)
!142 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17ha0c4d93bc26b1ee1E", scope: !119, file: !117, line: 206, type: !143, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{!96, !136}
!145 = !{!140}
!146 = !{!147}
!147 = !DITemplateTypeParameter(name: "T", type: !14)
!148 = !DILocation(line: 206, column: 17, scope: !141, inlinedAt: !149)
!149 = !DILocation(line: 38, column: 17, scope: !131, inlinedAt: !139)
!150 = !DILocalVariable(name: "self", arg: 1, scope: !151, file: !117, line: 60, type: !136)
!151 = distinct !DILexicalBlock(scope: !152, file: !117, line: 60, column: 5)
!152 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0eed5feb2616b6b1E", scope: !119, file: !117, line: 60, type: !153, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !156, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{!94, !136}
!155 = !{!150}
!156 = !{!147, !157}
!157 = !DITemplateTypeParameter(name: "U", type: !95)
!158 = !DILocation(line: 60, column: 26, scope: !151, inlinedAt: !159)
!159 = !DILocation(line: 210, column: 38, scope: !141, inlinedAt: !149)
!160 = !DILocation(line: 210, column: 18, scope: !141, inlinedAt: !149)
!161 = !DILocation(line: 2771, column: 6, scope: !103, inlinedAt: !112)
!162 = !DILocation(line: 2771, column: 5, scope: !103, inlinedAt: !112)
!163 = !DILocation(line: 2771, column: 23, scope: !103, inlinedAt: !112)
!164 = !DILocation(line: 2752, column: 21, scope: !89)
!165 = !DILocation(line: 2750, column: 13, scope: !89)
!166 = !DILocation(line: 2756, column: 14, scope: !89)
!167 = distinct !DISubprogram(name: "write_volatile<usize>", linkageName: "_ZN4core3ptr14write_volatile17h0e7369cb0d2385beE", scope: !22, file: !114, line: 1704, type: !168, scopeLine: 1704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !174, retainedNodes: !171)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !170, !96}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut usize", baseType: !96, size: 64, align: 64, dwarfAddressSpace: 0)
!171 = !{!172, !173}
!172 = !DILocalVariable(name: "dst", arg: 1, scope: !167, file: !114, line: 1704, type: !170)
!173 = !DILocalVariable(name: "src", arg: 2, scope: !167, file: !114, line: 1704, type: !96)
!174 = !{!175}
!175 = !DITemplateTypeParameter(name: "T", type: !96)
!176 = !DILocation(line: 1704, column: 33, scope: !167)
!177 = !DILocation(line: 1704, column: 46, scope: !167)
!178 = !DILocation(line: 1707, column: 9, scope: !167)
!179 = !DILocation(line: 1714, column: 9, scope: !167)
!180 = !DILocation(line: 1716, column: 2, scope: !167)
!181 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr14write_volatile18precondition_check17h1e6e772f37ccb778E", scope: !182, file: !90, line: 2750, type: !183, scopeLine: 2750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !186)
!182 = !DINamespace(name: "write_volatile", scope: !22)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !185, !96}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut ()", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!186 = !{!187, !188}
!187 = !DILocalVariable(name: "addr", arg: 1, scope: !181, file: !90, line: 2750, type: !185)
!188 = !DILocalVariable(name: "align", arg: 2, scope: !181, file: !90, line: 2750, type: !96)
!189 = !DILocation(line: 2750, column: 37, scope: !181)
!190 = !DILocalVariable(name: "align", arg: 2, scope: !191, file: !90, line: 2770, type: !96)
!191 = distinct !DILexicalBlock(scope: !192, file: !90, line: 2770, column: 1)
!192 = distinct !DISubprogram(name: "is_aligned_and_not_null", linkageName: "_ZN4core10intrinsics23is_aligned_and_not_null17h65b0325fdb1d87b6E", scope: !105, file: !90, line: 2770, type: !106, scopeLine: 2770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !193)
!193 = !{!194, !190}
!194 = !DILocalVariable(name: "ptr", arg: 1, scope: !191, file: !90, line: 2770, type: !94)
!195 = !DILocation(line: 2770, column: 55, scope: !191, inlinedAt: !196)
!196 = !DILocation(line: 1712, column: 18, scope: !197)
!197 = !DILexicalBlockFile(scope: !181, file: !114, discriminator: 0)
!198 = !DILocation(line: 1712, column: 42, scope: !197)
!199 = !DILocation(line: 2770, column: 39, scope: !191, inlinedAt: !196)
!200 = !DILocalVariable(name: "self", arg: 1, scope: !201, file: !117, line: 35, type: !94)
!201 = distinct !DILexicalBlock(scope: !202, file: !117, line: 35, column: 5)
!202 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h22758dc361cd3c25E", scope: !119, file: !117, line: 35, type: !121, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !124, retainedNodes: !203)
!203 = !{!200}
!204 = !DILocation(line: 35, column: 26, scope: !201, inlinedAt: !205)
!205 = !DILocation(line: 2771, column: 10, scope: !191, inlinedAt: !196)
!206 = !DILocation(line: 52, column: 37, scope: !201, inlinedAt: !205)
!207 = !DILocalVariable(name: "ptr", arg: 1, scope: !208, file: !117, line: 37, type: !136)
!208 = distinct !DILexicalBlock(scope: !209, file: !117, line: 37, column: 9)
!209 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null12runtime_impl17h3404399a72511871E", scope: !133, file: !117, line: 37, type: !134, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !210)
!210 = !{!207}
!211 = !DILocation(line: 37, column: 25, scope: !208, inlinedAt: !212)
!212 = !DILocation(line: 52, column: 18, scope: !201, inlinedAt: !205)
!213 = !DILocalVariable(name: "self", arg: 1, scope: !214, file: !117, line: 206, type: !136)
!214 = distinct !DILexicalBlock(scope: !215, file: !117, line: 206, column: 5)
!215 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17ha0c4d93bc26b1ee1E", scope: !119, file: !117, line: 206, type: !143, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !216)
!216 = !{!213}
!217 = !DILocation(line: 206, column: 17, scope: !214, inlinedAt: !218)
!218 = !DILocation(line: 38, column: 17, scope: !208, inlinedAt: !212)
!219 = !DILocalVariable(name: "self", arg: 1, scope: !220, file: !117, line: 60, type: !136)
!220 = distinct !DILexicalBlock(scope: !221, file: !117, line: 60, column: 5)
!221 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0eed5feb2616b6b1E", scope: !119, file: !117, line: 60, type: !153, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !156, retainedNodes: !222)
!222 = !{!219}
!223 = !DILocation(line: 60, column: 26, scope: !220, inlinedAt: !224)
!224 = !DILocation(line: 210, column: 38, scope: !214, inlinedAt: !218)
!225 = !DILocation(line: 210, column: 18, scope: !214, inlinedAt: !218)
!226 = !DILocation(line: 2771, column: 6, scope: !191, inlinedAt: !196)
!227 = !DILocation(line: 2771, column: 5, scope: !191, inlinedAt: !196)
!228 = !DILocation(line: 2771, column: 23, scope: !191, inlinedAt: !196)
!229 = !DILocation(line: 2752, column: 21, scope: !181)
!230 = !DILocation(line: 2750, column: 13, scope: !181)
!231 = !DILocation(line: 2756, column: 14, scope: !181)
!232 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<usize, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr51drop_in_place$LT$alloc..boxed..Box$LT$usize$GT$$GT$17h11bda6379cf0c1d4E", scope: !22, file: !114, line: 515, type: !233, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !239, retainedNodes: !237)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut alloc::boxed::Box<usize, alloc::alloc::Global>", baseType: !236, size: 64, align: 64, dwarfAddressSpace: 0)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<usize, alloc::alloc::Global>", baseType: !96, size: 64, align: 64, dwarfAddressSpace: 0)
!237 = !{!238}
!238 = !DILocalVariable(arg: 1, scope: !232, file: !114, line: 515, type: !235)
!239 = !{!240}
!240 = !DITemplateTypeParameter(name: "T", type: !236)
!241 = !DILocation(line: 515, column: 1, scope: !232)
!242 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h0d594ad5908f6c4fE", scope: !243, file: !90, line: 2750, type: !246, scopeLine: 2750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !248)
!243 = !DINamespace(name: "new_unchecked", scope: !244)
!244 = !DINamespace(name: "{impl#3}", scope: !245)
!245 = !DINamespace(name: "non_null", scope: !22)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !185}
!248 = !{!249}
!249 = !DILocalVariable(name: "ptr", arg: 1, scope: !242, file: !90, line: 2750, type: !185)
!250 = !DILocation(line: 2750, column: 37, scope: !242)
!251 = !DILocalVariable(name: "self", arg: 1, scope: !252, file: !253, line: 35, type: !185)
!252 = distinct !DILexicalBlock(scope: !254, file: !253, line: 35, column: 5)
!253 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "7145bf1440868d3aeb251a5af6f2fce2")
!254 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h76afc6c4028880acE", scope: !255, file: !253, line: 35, type: !257, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !124, retainedNodes: !259)
!255 = !DINamespace(name: "{impl#0}", scope: !256)
!256 = !DINamespace(name: "mut_ptr", scope: !22)
!257 = !DISubroutineType(types: !258)
!258 = !{!108, !185}
!259 = !{!251}
!260 = !DILocation(line: 35, column: 26, scope: !252, inlinedAt: !261)
!261 = !DILocation(line: 222, column: 57, scope: !262)
!262 = !DILexicalBlockFile(scope: !242, file: !263, discriminator: 0)
!263 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/non_null.rs", directory: "", checksumkind: CSK_MD5, checksum: "a145fe82a5df4d863530a0287eb10483")
!264 = !DILocation(line: 52, column: 37, scope: !252, inlinedAt: !261)
!265 = !DILocalVariable(name: "ptr", arg: 1, scope: !266, file: !253, line: 37, type: !271)
!266 = distinct !DILexicalBlock(scope: !267, file: !253, line: 37, column: 9)
!267 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null12runtime_impl17h9668bc637869e275E", scope: !268, file: !253, line: 37, type: !269, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !272)
!268 = !DINamespace(name: "is_null", scope: !255)
!269 = !DISubroutineType(types: !270)
!270 = !{!108, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!272 = !{!265}
!273 = !DILocation(line: 37, column: 25, scope: !266, inlinedAt: !274)
!274 = !DILocation(line: 52, column: 18, scope: !252, inlinedAt: !261)
!275 = !DILocalVariable(name: "self", arg: 1, scope: !276, file: !253, line: 214, type: !271)
!276 = distinct !DILexicalBlock(scope: !277, file: !253, line: 214, column: 5)
!277 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h9f2bb37c00384468E", scope: !255, file: !253, line: 214, type: !278, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{!96, !271}
!280 = !{!275}
!281 = !DILocation(line: 214, column: 17, scope: !276, inlinedAt: !282)
!282 = !DILocation(line: 38, column: 17, scope: !266, inlinedAt: !274)
!283 = !DILocalVariable(name: "self", arg: 1, scope: !284, file: !253, line: 60, type: !271)
!284 = distinct !DILexicalBlock(scope: !285, file: !253, line: 60, column: 5)
!285 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17h1390ffe24cc164c6E", scope: !255, file: !253, line: 60, type: !286, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !156, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{!185, !271}
!288 = !{!283}
!289 = !DILocation(line: 60, column: 26, scope: !284, inlinedAt: !290)
!290 = !DILocation(line: 218, column: 38, scope: !276, inlinedAt: !282)
!291 = !DILocation(line: 218, column: 18, scope: !276, inlinedAt: !282)
!292 = !DILocation(line: 222, column: 53, scope: !262)
!293 = !DILocation(line: 2752, column: 21, scope: !242)
!294 = !DILocation(line: 2756, column: 14, scope: !242)
!295 = distinct !DISubprogram(name: "is_aligned_to<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h3ca58e58e2861592E", scope: !119, file: !117, line: 1607, type: !106, scopeLine: 1607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !124, retainedNodes: !296)
!296 = !{!297, !298}
!297 = !DILocalVariable(name: "self", arg: 1, scope: !295, file: !117, line: 1607, type: !94)
!298 = !DILocalVariable(name: "align", arg: 2, scope: !295, file: !117, line: 1607, type: !96)
!299 = !DILocation(line: 1607, column: 32, scope: !295)
!300 = !DILocalVariable(name: "self", arg: 1, scope: !301, file: !117, line: 60, type: !94)
!301 = distinct !DILexicalBlock(scope: !302, file: !117, line: 60, column: 5)
!302 = distinct !DISubprogram(name: "cast<(), ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6f51226c5b609a89E", scope: !119, file: !117, line: 60, type: !303, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !308, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{!94, !94}
!305 = !{!300, !306}
!306 = !DILocalVariable(name: "self", arg: 1, scope: !307, file: !117, line: 60, type: !94)
!307 = distinct !DILexicalBlock(scope: !302, file: !117, line: 60, column: 5)
!308 = !{!125, !157}
!309 = !DILocation(line: 60, column: 26, scope: !301, inlinedAt: !310)
!310 = !DILocation(line: 1627, column: 42, scope: !295)
!311 = !DILocation(line: 1607, column: 38, scope: !295)
!312 = !DILocalVariable(name: "self", arg: 1, scope: !313, file: !314, line: 1281, type: !96)
!313 = !DILexicalBlockFile(scope: !315, file: !314, discriminator: 0)
!314 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/num/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "03eb9371ac6ef6f22725c194b88148fe")
!315 = distinct !DILexicalBlock(scope: !317, file: !316, line: 2689, column: 9)
!316 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "278bd6ca98d30809003b0b6c02c39a08")
!317 = distinct !DISubprogram(name: "is_power_of_two", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h24083fa07f51b0b6E", scope: !318, file: !316, line: 2689, type: !320, scopeLine: 2689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !322)
!318 = !DINamespace(name: "{impl#11}", scope: !319)
!319 = !DINamespace(name: "num", scope: !13)
!320 = !DISubroutineType(types: !321)
!321 = !{!108, !96}
!322 = !{!312}
!323 = !DILocation(line: 1281, column: 5, scope: !313, inlinedAt: !324)
!324 = !DILocation(line: 1608, column: 19, scope: !295)
!325 = !DILocalVariable(name: "self", arg: 1, scope: !326, file: !314, line: 1281, type: !96)
!326 = !DILexicalBlockFile(scope: !327, file: !314, discriminator: 0)
!327 = distinct !DILexicalBlock(scope: !328, file: !316, line: 106, column: 9)
!328 = distinct !DISubprogram(name: "count_ones", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$10count_ones17ha628ad9cf072bf7dE", scope: !318, file: !316, line: 106, type: !329, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !332)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !96}
!331 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!332 = !{!325}
!333 = !DILocation(line: 1281, column: 5, scope: !326, inlinedAt: !334)
!334 = !DILocation(line: 2690, column: 18, scope: !315, inlinedAt: !324)
!335 = !DILocalVariable(name: "align", arg: 2, scope: !336, file: !117, line: 1613, type: !96)
!336 = distinct !DILexicalBlock(scope: !337, file: !117, line: 1613, column: 9)
!337 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to12runtime_impl17h0d54297e9fab4caeE", scope: !338, file: !117, line: 1613, type: !106, scopeLine: 1613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !339)
!338 = !DINamespace(name: "is_aligned_to", scope: !119)
!339 = !{!340, !335}
!340 = !DILocalVariable(name: "ptr", arg: 1, scope: !336, file: !117, line: 1613, type: !94)
!341 = !DILocation(line: 1613, column: 41, scope: !336, inlinedAt: !342)
!342 = !DILocation(line: 1627, column: 18, scope: !295)
!343 = !DILocation(line: 1608, column: 13, scope: !295)
!344 = !DILocation(line: 61, column: 9, scope: !301, inlinedAt: !310)
!345 = !DILocation(line: 1613, column: 25, scope: !336, inlinedAt: !342)
!346 = !DILocalVariable(name: "self", arg: 1, scope: !347, file: !117, line: 206, type: !94)
!347 = distinct !DILexicalBlock(scope: !348, file: !117, line: 206, column: 5)
!348 = distinct !DISubprogram(name: "addr<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h3025be52cfb1bdb4E", scope: !119, file: !117, line: 206, type: !349, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !124, retainedNodes: !351)
!349 = !DISubroutineType(types: !350)
!350 = !{!96, !94}
!351 = !{!346}
!352 = !DILocation(line: 206, column: 17, scope: !347, inlinedAt: !353)
!353 = !DILocation(line: 1614, column: 17, scope: !336, inlinedAt: !342)
!354 = !DILocation(line: 60, column: 26, scope: !307, inlinedAt: !355)
!355 = !DILocation(line: 210, column: 38, scope: !347, inlinedAt: !353)
!356 = !DILocation(line: 210, column: 18, scope: !347, inlinedAt: !353)
!357 = !DILocation(line: 1614, column: 26, scope: !336, inlinedAt: !342)
!358 = !DILocation(line: 1609, column: 20, scope: !295)
!359 = !DILocalVariable(name: "pieces", arg: 1, scope: !360, file: !361, line: 321, type: !366)
!360 = distinct !DILexicalBlock(scope: !362, file: !361, line: 321, column: 5)
!361 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/fmt/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "f2f9e528240e472a11f8ea13e1ff6e2a")
!362 = distinct !DISubprogram(name: "new_const", linkageName: "_ZN4core3fmt9Arguments9new_const17h2a7d9ffcd3178727E", scope: !363, file: !361, line: 321, type: !483, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !485, retainedNodes: !486)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !12, file: !10, size: 384, align: 64, flags: DIFlagPublic, elements: !364, templateParams: !100, identifier: "faa7670a9655309e8ac3c536ba51b4fe")
!364 = !{!365, !376, !420}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pieces", scope: !363, file: !10, baseType: !366, size: 128, align: 64, flags: DIFlagPrivate)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[&str]", file: !10, size: 128, align: 64, elements: !367, templateParams: !100, identifier: "d76b83877ddcb5cca61caf6bdca727ac")
!367 = !{!368, !375}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !366, file: !10, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64, dwarfAddressSpace: 0)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !10, size: 128, align: 64, elements: !371, templateParams: !100, identifier: "857c99401054bcaa39f98e6e0c6d74b")
!371 = !{!372, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !370, file: !10, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !370, file: !10, baseType: !96, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !366, file: !10, baseType: !96, size: 64, align: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !363, file: !10, baseType: !377, size: 128, align: 64, offset: 256, flags: DIFlagPrivate)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&[core::fmt::rt::Placeholder]>", scope: !378, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !379, templateParams: !100, identifier: "813911567d3485705bdd39a59582059b")
!378 = !DINamespace(name: "option", scope: !13)
!379 = !{!380}
!380 = !DICompositeType(tag: DW_TAG_variant_part, scope: !377, file: !10, size: 128, align: 64, elements: !381, templateParams: !100, identifier: "56fed4c89a3f7f597174146be0007a8e", discriminator: !419)
!381 = !{!382, !415}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !380, file: !10, baseType: !383, size: 128, align: 64, extraData: i128 0)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !377, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !100, templateParams: !384, identifier: "ec1686a1f256368660afa353381dce37")
!384 = !{!385}
!385 = !DITemplateTypeParameter(name: "T", type: !386)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::Placeholder]", file: !10, size: 128, align: 64, elements: !387, templateParams: !100, identifier: "4f85a872d0c1cbdc12272cdd753a81f0")
!387 = !{!388, !414}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !386, file: !10, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64, dwarfAddressSpace: 0)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "Placeholder", scope: !11, file: !10, size: 448, align: 64, flags: DIFlagPublic, elements: !391, templateParams: !100, identifier: "a2873a207613661a6545bdc907c72fa0")
!391 = !{!392, !393, !395, !396, !397, !413}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !390, file: !10, baseType: !96, size: 64, align: 64, offset: 256, flags: DIFlagPublic)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !390, file: !10, baseType: !394, size: 32, align: 32, offset: 320, flags: DIFlagPublic)
!394 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_UTF)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !390, file: !10, baseType: !9, size: 8, align: 8, offset: 384, flags: DIFlagPublic)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !10, baseType: !331, size: 32, align: 32, offset: 352, flags: DIFlagPublic)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !390, file: !10, baseType: !398, size: 128, align: 64, flags: DIFlagPublic)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !11, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !399, templateParams: !100, identifier: "ad4aa7507d4c5865c8cdb2e4ca243b68")
!399 = !{!400}
!400 = !DICompositeType(tag: DW_TAG_variant_part, scope: !398, file: !10, size: 128, align: 64, elements: !401, templateParams: !100, identifier: "141f76817709183f4beaee805fd8ef97", discriminator: !412)
!401 = !{!402, !406, !410}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "Is", scope: !400, file: !10, baseType: !403, size: 128, align: 64, extraData: i128 0)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "Is", scope: !398, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !404, templateParams: !100, identifier: "838c3cae16c547da72f6af7c9f4e0e68")
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !403, file: !10, baseType: !96, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "Param", scope: !400, file: !10, baseType: !407, size: 128, align: 64, extraData: i128 1)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "Param", scope: !398, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !408, templateParams: !100, identifier: "e2edd6c8bfc04e2cb06cdc9fec9c34f8")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !407, file: !10, baseType: !96, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "Implied", scope: !400, file: !10, baseType: !411, size: 128, align: 64, extraData: i128 2)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "Implied", scope: !398, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !100, identifier: "34b450a2764be65e8e52dbc531ce2db4")
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !10, baseType: !23, size: 64, align: 64, flags: DIFlagArtificial)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !390, file: !10, baseType: !398, size: 128, align: 64, offset: 128, flags: DIFlagPublic)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !386, file: !10, baseType: !96, size: 64, align: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !380, file: !10, baseType: !416, size: 128, align: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !377, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !417, templateParams: !384, identifier: "92050194f97cb00e48d58b1dde1cef77")
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !416, file: !10, baseType: !386, size: 128, align: 64, flags: DIFlagPublic)
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !10, baseType: !23, size: 64, align: 64, flags: DIFlagArtificial)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !363, file: !10, baseType: !421, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::Argument]", file: !10, size: 128, align: 64, elements: !422, templateParams: !100, identifier: "233b032a1e45023df521b761d5d7d542")
!422 = !{!423, !482}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !421, file: !10, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64, dwarfAddressSpace: 0)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !11, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !426, templateParams: !100, identifier: "95df57a4aebb2f03591701a5b2d29e42")
!426 = !{!427, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !425, file: !10, baseType: !428, size: 64, align: 64, flags: DIFlagPrivate)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::fmt::rt::{extern#0}::Opaque", baseType: !429, size: 64, align: 64, dwarfAddressSpace: 0)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "Opaque", scope: !430, file: !10, align: 8, elements: !100, identifier: "7706c0317bd1bf7180596046917fba0d")
!430 = !DINamespace(name: "{extern#0}", scope: !11)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !425, file: !10, baseType: !432, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&core::fmt::rt::{extern#0}::Opaque, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !433, size: 64, align: 64, dwarfAddressSpace: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !428, !452}
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), core::fmt::Error>", scope: !436, file: !10, size: 8, align: 8, flags: DIFlagPublic, elements: !437, templateParams: !100, identifier: "ab5ef58ef2036ca25c830dc7e4064409")
!436 = !DINamespace(name: "result", scope: !13)
!437 = !{!438}
!438 = !DICompositeType(tag: DW_TAG_variant_part, scope: !435, file: !10, size: 8, align: 8, elements: !439, templateParams: !100, identifier: "d5e1d4cbf70e63ed4bbaf5a6c1d62a0c", discriminator: !451)
!439 = !{!440, !447}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !438, file: !10, baseType: !441, size: 8, align: 8, extraData: i128 0)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !435, file: !10, size: 8, align: 8, flags: DIFlagPublic, elements: !442, templateParams: !444, identifier: "f9002d4ce33a05b1c5afd344dec4f2a5")
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !441, file: !10, baseType: !95, align: 8, offset: 8, flags: DIFlagPublic)
!444 = !{!125, !445}
!445 = !DITemplateTypeParameter(name: "E", type: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !12, file: !10, align: 8, flags: DIFlagPublic, elements: !100, identifier: "aad5108d968ef6c2778d5630f333c57")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !438, file: !10, baseType: !448, size: 8, align: 8, extraData: i128 1)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !435, file: !10, size: 8, align: 8, flags: DIFlagPublic, elements: !449, templateParams: !444, identifier: "17bed3ab7adaa9cb2f363a783e2578")
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !448, file: !10, baseType: !446, align: 8, offset: 8, flags: DIFlagPublic)
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !10, baseType: !14, size: 8, align: 8, flags: DIFlagArtificial)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::fmt::Formatter", baseType: !453, size: 64, align: 64, dwarfAddressSpace: 0)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !12, file: !10, size: 512, align: 64, flags: DIFlagPublic, elements: !454, templateParams: !100, identifier: "33e346d55aa66396e26ebc2b0f2a8e89")
!454 = !{!455, !456, !457, !458, !470, !471}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !10, baseType: !331, size: 32, align: 32, offset: 416, flags: DIFlagPrivate)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !453, file: !10, baseType: !394, size: 32, align: 32, offset: 384, flags: DIFlagPrivate)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !453, file: !10, baseType: !9, size: 8, align: 8, offset: 448, flags: DIFlagPrivate)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !453, file: !10, baseType: !459, size: 128, align: 64, flags: DIFlagPrivate)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !378, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !460, templateParams: !100, identifier: "ddfaafd985f393ec3f8608d8a9edb9c9")
!460 = !{!461}
!461 = !DICompositeType(tag: DW_TAG_variant_part, scope: !459, file: !10, size: 128, align: 64, elements: !462, templateParams: !100, identifier: "4068b1927a758682ea5bb9d531c4279b", discriminator: !469)
!462 = !{!463, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !461, file: !10, baseType: !464, size: 128, align: 64, extraData: i128 0)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !459, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !100, templateParams: !174, identifier: "94f0e83bf95cf0bb3ad64852a11d983")
!465 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !461, file: !10, baseType: !466, size: 128, align: 64, extraData: i128 1)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !459, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !467, templateParams: !174, identifier: "181b4a5e09d977ac6f9496ace53a5b5")
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !466, file: !10, baseType: !96, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !10, baseType: !23, size: 64, align: 64, flags: DIFlagArtificial)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !453, file: !10, baseType: !459, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !453, file: !10, baseType: !472, size: 128, align: 64, offset: 256, flags: DIFlagPrivate)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !10, size: 128, align: 64, elements: !473, templateParams: !100, identifier: "5867366cda007acf41fccca3c54984b5")
!473 = !{!474, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !472, file: !10, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64, dwarfAddressSpace: 0)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::fmt::Write", file: !10, align: 8, elements: !100, identifier: "b3b6f54d4757564edc84dc22b28a2d7")
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !472, file: !10, baseType: !478, size: 64, align: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 3]", baseType: !479, size: 64, align: 64, dwarfAddressSpace: 0)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 192, align: 64, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 3, lowerBound: 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !421, file: !10, baseType: !96, size: 64, align: 64, offset: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!363, !366}
!485 = !DISubprogram(name: "new_const", linkageName: "_ZN4core3fmt9Arguments9new_const17h2a7d9ffcd3178727E", scope: !363, file: !361, line: 321, type: !483, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !100)
!486 = !{!359}
!487 = !DILocation(line: 321, column: 28, scope: !360, inlinedAt: !488)
!488 = !DILocation(line: 106, column: 38, scope: !489)
!489 = !DILexicalBlockFile(scope: !295, file: !490, discriminator: 0)
!490 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/panic.rs", directory: "", checksumkind: CSK_MD5, checksum: "7db7c9ae020c8c30f72806f85a2ffe20")
!491 = !DILocation(line: 325, column: 9, scope: !360, inlinedAt: !488)
!492 = !{i64 8}
!493 = !DILocation(line: 1609, column: 13, scope: !295)
!494 = !DILocation(line: 1614, column: 13, scope: !336, inlinedAt: !342)
!495 = !DILocation(line: 1628, column: 6, scope: !295)
!496 = distinct !DISubprogram(name: "for_value_raw<usize>", linkageName: "_ZN4core5alloc6layout6Layout13for_value_raw17he1478a1eb52eda4eE", scope: !498, file: !497, line: 199, type: !507, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !174, declaration: !510, retainedNodes: !511)
!497 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/alloc/layout.rs", directory: "", checksumkind: CSK_MD5, checksum: "36ca1e5f2562092d771f1096d5cbdce8")
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "Layout", scope: !499, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !501, templateParams: !100, identifier: "3b1c138aab2d13ae8d716990f2187b90")
!499 = !DINamespace(name: "layout", scope: !500)
!500 = !DINamespace(name: "alloc", scope: !13)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !498, file: !10, baseType: !96, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !498, file: !10, baseType: !504, size: 64, align: 64, flags: DIFlagPrivate)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "Alignment", scope: !21, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !505, templateParams: !100, identifier: "5467243993070260a4cecf77a0effd2d")
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !504, file: !10, baseType: !20, size: 64, align: 64, flags: DIFlagPrivate)
!507 = !DISubroutineType(types: !508)
!508 = !{!498, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !96, size: 64, align: 64, dwarfAddressSpace: 0)
!510 = !DISubprogram(name: "for_value_raw<usize>", linkageName: "_ZN4core5alloc6layout6Layout13for_value_raw17he1478a1eb52eda4eE", scope: !498, file: !497, line: 199, type: !507, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !174)
!511 = !{!512, !513, !515}
!512 = !DILocalVariable(name: "t", arg: 1, scope: !496, file: !497, line: 199, type: !509)
!513 = !DILocalVariable(name: "size", scope: !514, file: !497, line: 201, type: !96, align: 8)
!514 = distinct !DILexicalBlock(scope: !496, file: !497, line: 201, column: 9)
!515 = !DILocalVariable(name: "align", scope: !514, file: !497, line: 201, type: !96, align: 8)
!516 = !DILocation(line: 199, column: 50, scope: !496)
!517 = !DILocalVariable(name: "val", arg: 1, scope: !518, file: !519, line: 394, type: !509)
!518 = distinct !DILexicalBlock(scope: !520, file: !519, line: 394, column: 1)
!519 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/mem/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "bda077d6e282675e77b8cddaeb21296e")
!520 = distinct !DISubprogram(name: "size_of_val_raw<usize>", linkageName: "_ZN4core3mem15size_of_val_raw17hc736b6dea0176a2eE", scope: !521, file: !519, line: 394, type: !522, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !174, retainedNodes: !524)
!521 = !DINamespace(name: "mem", scope: !13)
!522 = !DISubroutineType(types: !523)
!523 = !{!96, !509}
!524 = !{!517}
!525 = !DILocation(line: 394, column: 48, scope: !518, inlinedAt: !526)
!526 = !DILocation(line: 201, column: 39, scope: !496)
!527 = !DILocalVariable(name: "val", arg: 1, scope: !528, file: !519, line: 536, type: !509)
!528 = distinct !DILexicalBlock(scope: !529, file: !519, line: 536, column: 1)
!529 = distinct !DISubprogram(name: "align_of_val_raw<usize>", linkageName: "_ZN4core3mem16align_of_val_raw17hd27cfa9ea27297b3E", scope: !521, file: !519, line: 536, type: !522, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !174, retainedNodes: !530)
!530 = !{!527}
!531 = !DILocation(line: 536, column: 49, scope: !528, inlinedAt: !532)
!532 = !DILocation(line: 201, column: 64, scope: !496)
!533 = !DILocation(line: 396, column: 14, scope: !518, inlinedAt: !526)
!534 = !DILocation(line: 201, column: 14, scope: !514)
!535 = !DILocalVariable(name: "size", arg: 1, scope: !536, file: !497, line: 118, type: !96)
!536 = distinct !DILexicalBlock(scope: !537, file: !497, line: 118, column: 5)
!537 = distinct !DISubprogram(name: "from_size_align_unchecked", linkageName: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h05427b4df5af4f50E", scope: !498, file: !497, line: 118, type: !538, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !540, retainedNodes: !541)
!538 = !DISubroutineType(types: !539)
!539 = !{!498, !96, !96}
!540 = !DISubprogram(name: "from_size_align_unchecked", linkageName: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h05427b4df5af4f50E", scope: !498, file: !497, line: 118, type: !538, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !100)
!541 = !{!535, !542}
!542 = !DILocalVariable(name: "align", arg: 2, scope: !536, file: !497, line: 118, type: !96)
!543 = !DILocation(line: 118, column: 51, scope: !536, inlinedAt: !544)
!544 = !DILocation(line: 203, column: 18, scope: !514)
!545 = !DILocation(line: 538, column: 14, scope: !528, inlinedAt: !532)
!546 = !DILocation(line: 201, column: 20, scope: !514)
!547 = !DILocation(line: 118, column: 64, scope: !536, inlinedAt: !544)
!548 = !DILocalVariable(name: "align", arg: 1, scope: !549, file: !550, line: 78, type: !96)
!549 = distinct !DILexicalBlock(scope: !551, file: !550, line: 78, column: 5)
!550 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/alignment.rs", directory: "", checksumkind: CSK_MD5, checksum: "b80ec300d834fbe8db2a6215352d9174")
!551 = distinct !DISubprogram(name: "new_unchecked", linkageName: "_ZN4core3ptr9alignment9Alignment13new_unchecked17he8e6ce6002cdb320E", scope: !504, file: !550, line: 78, type: !552, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !554, retainedNodes: !555)
!552 = !DISubroutineType(types: !553)
!553 = !{!504, !96}
!554 = !DISubprogram(name: "new_unchecked", linkageName: "_ZN4core3ptr9alignment9Alignment13new_unchecked17he8e6ce6002cdb320E", scope: !504, file: !550, line: 78, type: !552, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !100)
!555 = !{!548}
!556 = !DILocation(line: 78, column: 39, scope: !549, inlinedAt: !557)
!557 = !DILocation(line: 120, column: 40, scope: !536, inlinedAt: !544)
!558 = !DILocalVariable(name: "self", arg: 1, scope: !559, file: !314, line: 1281, type: !96)
!559 = !DILexicalBlockFile(scope: !560, file: !314, discriminator: 0)
!560 = distinct !DILexicalBlock(scope: !561, file: !316, line: 2689, column: 9)
!561 = distinct !DISubprogram(name: "is_power_of_two", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h24083fa07f51b0b6E", scope: !318, file: !316, line: 2689, type: !320, scopeLine: 2689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !562)
!562 = !{!558}
!563 = !DILocation(line: 1281, column: 5, scope: !559, inlinedAt: !564)
!564 = !DILocation(line: 81, column: 19, scope: !549, inlinedAt: !557)
!565 = !DILocalVariable(name: "self", arg: 1, scope: !566, file: !314, line: 1281, type: !96)
!566 = !DILexicalBlockFile(scope: !567, file: !314, discriminator: 0)
!567 = distinct !DILexicalBlock(scope: !568, file: !316, line: 106, column: 9)
!568 = distinct !DISubprogram(name: "count_ones", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$10count_ones17ha628ad9cf072bf7dE", scope: !318, file: !316, line: 106, type: !329, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !569)
!569 = !{!565}
!570 = !DILocation(line: 1281, column: 5, scope: !566, inlinedAt: !571)
!571 = !DILocation(line: 2690, column: 18, scope: !560, inlinedAt: !564)
!572 = !DILocation(line: 80, column: 9, scope: !549, inlinedAt: !557)
!573 = !DILocation(line: 81, column: 13, scope: !549, inlinedAt: !557)
!574 = !DILocation(line: 120, column: 18, scope: !536, inlinedAt: !544)
!575 = !DILocation(line: 204, column: 6, scope: !496)
!576 = !{i64 1, i64 -9223372036854775807}
!577 = distinct !DISubprogram(name: "exchange_malloc", linkageName: "_ZN5alloc5alloc15exchange_malloc17h4762b1c233d365c1E", scope: !579, file: !578, line: 329, type: !581, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !583)
!578 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/alloc/src/alloc.rs", directory: "", checksumkind: CSK_MD5, checksum: "49a4d367bb966a4a848e9c9de6233d54")
!579 = !DINamespace(name: "alloc", scope: !580)
!580 = !DINamespace(name: "alloc", scope: null)
!581 = !DISubroutineType(types: !582)
!582 = !{!271, !96, !96}
!583 = !{!584, !585, !586, !588}
!584 = !DILocalVariable(name: "size", arg: 1, scope: !577, file: !578, line: 329, type: !96)
!585 = !DILocalVariable(name: "align", arg: 2, scope: !577, file: !578, line: 329, type: !96)
!586 = !DILocalVariable(name: "layout", scope: !587, file: !578, line: 330, type: !498, align: 8)
!587 = distinct !DILexicalBlock(scope: !577, file: !578, line: 330, column: 5)
!588 = !DILocalVariable(name: "ptr", scope: !589, file: !578, line: 332, type: !590, align: 8)
!589 = distinct !DILexicalBlock(scope: !587, file: !578, line: 332, column: 9)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<[u8]>", scope: !245, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !591, templateParams: !146, identifier: "d6f5b1feb841d87ab02dc466387c8cce")
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !590, file: !10, baseType: !593, size: 128, align: 64, flags: DIFlagPrivate)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "*const [u8]", file: !10, size: 128, align: 64, elements: !594, templateParams: !100, identifier: "a329dffc2f36de2e98a77091932cf429")
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !593, file: !10, baseType: !373, size: 64, align: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !593, file: !10, baseType: !96, size: 64, align: 64, offset: 64)
!597 = !DILocation(line: 241, column: 17, scope: !598, inlinedAt: !625)
!598 = distinct !DILexicalBlock(scope: !599, file: !578, line: 241, column: 5)
!599 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h7e85f38601a7fe4bE", scope: !600, file: !578, line: 241, type: !601, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !622)
!600 = !DINamespace(name: "{impl#1}", scope: !579)
!601 = !DISubroutineType(types: !602)
!602 = !{!603, !620, !498}
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", scope: !436, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !604, templateParams: !100, identifier: "684e21cbcb41a89a17c26e1af70ecf52")
!604 = !{!605}
!605 = !DICompositeType(tag: DW_TAG_variant_part, scope: !603, file: !10, size: 128, align: 64, elements: !606, templateParams: !100, identifier: "899c2db47e0443804d59f0242c22c9dd", discriminator: !619)
!606 = !{!607, !615}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !605, file: !10, baseType: !608, size: 128, align: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !603, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !609, templateParams: !611, identifier: "b51a91901c25a587c10693c74f1f1fb7")
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !608, file: !10, baseType: !590, size: 128, align: 64, flags: DIFlagPublic)
!611 = !{!612, !613}
!612 = !DITemplateTypeParameter(name: "T", type: !590)
!613 = !DITemplateTypeParameter(name: "E", type: !614)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "AllocError", scope: !500, file: !10, align: 8, flags: DIFlagPublic, elements: !100, identifier: "bf7a8951f18266f15a4332d593ce99ac")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !605, file: !10, baseType: !616, size: 128, align: 64, extraData: i128 0)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !603, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !617, templateParams: !611, identifier: "aa378d214ced7fb51b4ffe6f076e036d")
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !616, file: !10, baseType: !614, align: 8, flags: DIFlagPublic)
!619 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !10, baseType: !23, size: 64, align: 64, flags: DIFlagArtificial)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::alloc::Global", baseType: !621, size: 64, align: 64, dwarfAddressSpace: 0)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !579, file: !10, align: 8, flags: DIFlagPublic, elements: !100, identifier: "a1139fe15000e37a4c5e3ab7f9c6a070")
!622 = !{!623, !624}
!623 = !DILocalVariable(name: "self", scope: !598, file: !578, line: 241, type: !620, align: 8)
!624 = !DILocalVariable(name: "layout", arg: 2, scope: !598, file: !578, line: 241, type: !498)
!625 = !DILocation(line: 331, column: 18, scope: !587)
!626 = !DILocation(line: 329, column: 27, scope: !577)
!627 = !DILocalVariable(name: "size", arg: 1, scope: !628, file: !497, line: 118, type: !96)
!628 = distinct !DILexicalBlock(scope: !629, file: !497, line: 118, column: 5)
!629 = distinct !DISubprogram(name: "from_size_align_unchecked", linkageName: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h05427b4df5af4f50E", scope: !498, file: !497, line: 118, type: !538, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !540, retainedNodes: !630)
!630 = !{!627, !631}
!631 = !DILocalVariable(name: "align", arg: 2, scope: !628, file: !497, line: 118, type: !96)
!632 = !DILocation(line: 118, column: 51, scope: !628, inlinedAt: !633)
!633 = !DILocation(line: 330, column: 27, scope: !577)
!634 = !DILocation(line: 329, column: 40, scope: !577)
!635 = !DILocation(line: 118, column: 64, scope: !628, inlinedAt: !633)
!636 = !DILocalVariable(name: "align", arg: 1, scope: !637, file: !550, line: 78, type: !96)
!637 = distinct !DILexicalBlock(scope: !638, file: !550, line: 78, column: 5)
!638 = distinct !DISubprogram(name: "new_unchecked", linkageName: "_ZN4core3ptr9alignment9Alignment13new_unchecked17he8e6ce6002cdb320E", scope: !504, file: !550, line: 78, type: !552, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !554, retainedNodes: !639)
!639 = !{!636}
!640 = !DILocation(line: 78, column: 39, scope: !637, inlinedAt: !641)
!641 = !DILocation(line: 120, column: 40, scope: !628, inlinedAt: !633)
!642 = !DILocalVariable(name: "self", arg: 1, scope: !643, file: !314, line: 1281, type: !96)
!643 = !DILexicalBlockFile(scope: !644, file: !314, discriminator: 0)
!644 = distinct !DILexicalBlock(scope: !645, file: !316, line: 2689, column: 9)
!645 = distinct !DISubprogram(name: "is_power_of_two", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h24083fa07f51b0b6E", scope: !318, file: !316, line: 2689, type: !320, scopeLine: 2689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !646)
!646 = !{!642}
!647 = !DILocation(line: 1281, column: 5, scope: !643, inlinedAt: !648)
!648 = !DILocation(line: 81, column: 19, scope: !637, inlinedAt: !641)
!649 = !DILocalVariable(name: "self", arg: 1, scope: !650, file: !314, line: 1281, type: !96)
!650 = !DILexicalBlockFile(scope: !651, file: !314, discriminator: 0)
!651 = distinct !DILexicalBlock(scope: !652, file: !316, line: 106, column: 9)
!652 = distinct !DISubprogram(name: "count_ones", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$10count_ones17ha628ad9cf072bf7dE", scope: !318, file: !316, line: 106, type: !329, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !653)
!653 = !{!649}
!654 = !DILocation(line: 1281, column: 5, scope: !650, inlinedAt: !655)
!655 = !DILocation(line: 2690, column: 18, scope: !644, inlinedAt: !648)
!656 = !DILocation(line: 330, column: 9, scope: !587)
!657 = !DILocation(line: 241, column: 24, scope: !598, inlinedAt: !625)
!658 = !DILocalVariable(name: "self", arg: 1, scope: !659, file: !263, line: 349, type: !661)
!659 = distinct !DILexicalBlock(scope: !660, file: !263, line: 349, column: 5)
!660 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha629b30d6be92f26E", scope: !661, file: !263, line: 349, type: !664, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !666, retainedNodes: !667)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !245, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !662, templateParams: !146, identifier: "7bd448ac4a647fbb2d23b7acfa28164")
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !661, file: !10, baseType: !136, size: 64, align: 64, flags: DIFlagPrivate)
!664 = !DISubroutineType(types: !665)
!665 = !{!271, !661}
!666 = !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha629b30d6be92f26E", scope: !661, file: !263, line: 349, type: !664, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!667 = !{!658}
!668 = !DILocation(line: 349, column: 25, scope: !659, inlinedAt: !669)
!669 = !DILocation(line: 1613, column: 32, scope: !670, inlinedAt: !677)
!670 = distinct !DILexicalBlock(scope: !671, file: !263, line: 1612, column: 5)
!671 = distinct !DISubprogram(name: "as_mut_ptr<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h7c90db6a87aea10dE", scope: !590, file: !263, line: 1612, type: !672, scopeLine: 1612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !674, retainedNodes: !675)
!672 = !DISubroutineType(types: !673)
!673 = !{!271, !590}
!674 = !DISubprogram(name: "as_mut_ptr<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h7c90db6a87aea10dE", scope: !590, file: !263, line: 1612, type: !672, scopeLine: 1612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!675 = !{!676}
!676 = !DILocalVariable(name: "self", arg: 1, scope: !670, file: !263, line: 1612, type: !590)
!677 = !DILocation(line: 332, column: 24, scope: !589)
!678 = !DILocation(line: 80, column: 9, scope: !637, inlinedAt: !641)
!679 = !DILocation(line: 81, column: 13, scope: !637, inlinedAt: !641)
!680 = !DILocation(line: 120, column: 18, scope: !628, inlinedAt: !633)
!681 = !DILocation(line: 242, column: 9, scope: !598, inlinedAt: !625)
!682 = !DILocation(line: 331, column: 11, scope: !587)
!683 = !DILocation(line: 331, column: 5, scope: !587)
!684 = !DILocation(line: 332, column: 12, scope: !587)
!685 = !DILocation(line: 332, column: 12, scope: !589)
!686 = !DILocation(line: 1612, column: 29, scope: !670, inlinedAt: !677)
!687 = !DILocalVariable(name: "self", arg: 1, scope: !688, file: !263, line: 1592, type: !590)
!688 = distinct !DILexicalBlock(scope: !689, file: !263, line: 1592, column: 5)
!689 = distinct !DISubprogram(name: "as_non_null_ptr<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h200b684124393a25E", scope: !590, file: !263, line: 1592, type: !690, scopeLine: 1592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !692, retainedNodes: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!661, !590}
!692 = !DISubprogram(name: "as_non_null_ptr<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h200b684124393a25E", scope: !590, file: !263, line: 1592, type: !690, scopeLine: 1592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!693 = !{!687}
!694 = !DILocation(line: 1592, column: 34, scope: !688, inlinedAt: !695)
!695 = !DILocation(line: 1613, column: 14, scope: !670, inlinedAt: !677)
!696 = !DILocalVariable(name: "self", arg: 1, scope: !697, file: !263, line: 473, type: !590)
!697 = distinct !DILexicalBlock(scope: !698, file: !263, line: 473, column: 5)
!698 = distinct !DISubprogram(name: "cast<[u8], u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hca3cfbf6b0d52c90E", scope: !590, file: !263, line: 473, type: !690, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !700, declaration: !699, retainedNodes: !702)
!699 = !DISubprogram(name: "cast<[u8], u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hca3cfbf6b0d52c90E", scope: !590, file: !263, line: 473, type: !690, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !700)
!700 = !{!147, !701}
!701 = !DITemplateTypeParameter(name: "U", type: !14)
!702 = !{!696}
!703 = !DILocation(line: 473, column: 26, scope: !697, inlinedAt: !704)
!704 = !DILocation(line: 1593, column: 14, scope: !688, inlinedAt: !695)
!705 = !DILocalVariable(name: "self", arg: 1, scope: !706, file: !263, line: 349, type: !590)
!706 = distinct !DILexicalBlock(scope: !707, file: !263, line: 349, column: 5)
!707 = distinct !DISubprogram(name: "as_ptr<[u8]>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h56f3c6a5a2ed601cE", scope: !590, file: !263, line: 349, type: !708, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !714, retainedNodes: !715)
!708 = !DISubroutineType(types: !709)
!709 = !{!710, !590}
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [u8]", file: !10, size: 128, align: 64, elements: !711, templateParams: !100, identifier: "bd558e033735f213c244d7572860f8f0")
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !710, file: !10, baseType: !373, size: 64, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !710, file: !10, baseType: !96, size: 64, align: 64, offset: 64)
!714 = !DISubprogram(name: "as_ptr<[u8]>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h56f3c6a5a2ed601cE", scope: !590, file: !263, line: 349, type: !708, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!715 = !{!705}
!716 = !DILocation(line: 349, column: 25, scope: !706, inlinedAt: !717)
!717 = !DILocation(line: 475, column: 42, scope: !697, inlinedAt: !704)
!718 = !DILocation(line: 475, column: 18, scope: !697, inlinedAt: !704)
!719 = !DILocation(line: 335, column: 2, scope: !577)
!720 = !DILocation(line: 333, column: 19, scope: !587)
!721 = distinct !DISubprogram(name: "alloc", linkageName: "_ZN5alloc5alloc5alloc17h2737db27504232eaE", scope: !579, file: !578, line: 93, type: !722, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !724)
!722 = !DISubroutineType(types: !723)
!723 = !{!271, !498}
!724 = !{!725}
!725 = !DILocalVariable(name: "layout", arg: 1, scope: !721, file: !578, line: 93, type: !498)
!726 = !DILocation(line: 1626, column: 32, scope: !727, inlinedAt: !733)
!727 = distinct !DILexicalBlock(scope: !728, file: !114, line: 1626, column: 1)
!728 = distinct !DISubprogram(name: "read_volatile<u8>", linkageName: "_ZN4core3ptr13read_volatile17h6231ee3faa5d7436E", scope: !22, file: !114, line: 1626, type: !729, scopeLine: 1626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{!14, !136}
!731 = !{!732}
!732 = !DILocalVariable(name: "src", scope: !727, file: !114, line: 1626, type: !136, align: 8)
!733 = !DILocation(line: 97, column: 9, scope: !721)
!734 = !DILocation(line: 93, column: 21, scope: !721)
!735 = !DILocation(line: 1629, column: 9, scope: !727, inlinedAt: !733)
!736 = !DILocation(line: 1636, column: 9, scope: !727, inlinedAt: !733)
!737 = !DILocation(line: 99, column: 22, scope: !721)
!738 = !DILocalVariable(name: "self", arg: 1, scope: !739, file: !497, line: 128, type: !743)
!739 = distinct !DILexicalBlock(scope: !740, file: !497, line: 128, column: 5)
!740 = distinct !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17h7f08c0ddec50b4f9E", scope: !498, file: !497, line: 128, type: !741, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !744, retainedNodes: !745)
!741 = !DISubroutineType(types: !742)
!742 = !{!96, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::alloc::layout::Layout", baseType: !498, size: 64, align: 64, dwarfAddressSpace: 0)
!744 = !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17h7f08c0ddec50b4f9E", scope: !498, file: !497, line: 128, type: !741, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !100)
!745 = !{!738}
!746 = !DILocation(line: 128, column: 23, scope: !739, inlinedAt: !747)
!747 = !DILocation(line: 99, column: 29, scope: !721)
!748 = !DILocation(line: 129, column: 9, scope: !739, inlinedAt: !747)
!749 = !DILocation(line: 99, column: 37, scope: !721)
!750 = !DILocalVariable(name: "self", arg: 1, scope: !751, file: !497, line: 141, type: !743)
!751 = distinct !DILexicalBlock(scope: !752, file: !497, line: 141, column: 5)
!752 = distinct !DISubprogram(name: "align", linkageName: "_ZN4core5alloc6layout6Layout5align17hd2be565a123078b1E", scope: !498, file: !497, line: 141, type: !741, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !753, retainedNodes: !754)
!753 = !DISubprogram(name: "align", linkageName: "_ZN4core5alloc6layout6Layout5align17hd2be565a123078b1E", scope: !498, file: !497, line: 141, type: !741, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !100)
!754 = !{!750}
!755 = !DILocation(line: 141, column: 24, scope: !751, inlinedAt: !756)
!756 = !DILocation(line: 99, column: 44, scope: !721)
!757 = !DILocation(line: 142, column: 9, scope: !751, inlinedAt: !756)
!758 = !DILocalVariable(name: "self", arg: 1, scope: !759, file: !550, line: 94, type: !504)
!759 = distinct !DILexicalBlock(scope: !760, file: !550, line: 94, column: 5)
!760 = distinct !DISubprogram(name: "as_usize", linkageName: "_ZN4core3ptr9alignment9Alignment8as_usize17hcb338b47c6748ad5E", scope: !504, file: !550, line: 94, type: !761, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !763, retainedNodes: !764)
!761 = !DISubroutineType(types: !762)
!762 = !{!96, !504}
!763 = !DISubprogram(name: "as_usize", linkageName: "_ZN4core3ptr9alignment9Alignment8as_usize17hcb338b47c6748ad5E", scope: !504, file: !550, line: 94, type: !761, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !100)
!764 = !{!758}
!765 = !DILocation(line: 94, column: 27, scope: !759, inlinedAt: !766)
!766 = !DILocation(line: 142, column: 20, scope: !751, inlinedAt: !756)
!767 = !DILocation(line: 95, column: 9, scope: !759, inlinedAt: !766)
!768 = !DILocation(line: 99, column: 9, scope: !721)
!769 = !DILocation(line: 101, column: 2, scope: !721)
!770 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_ZN5alloc5alloc6Global10alloc_impl17hf58900cdb76f486aE", scope: !621, file: !578, line: 177, type: !771, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !773, retainedNodes: !774)
!771 = !DISubroutineType(types: !772)
!772 = !{!603, !620, !498, !108}
!773 = !DISubprogram(name: "alloc_impl", linkageName: "_ZN5alloc5alloc6Global10alloc_impl17hf58900cdb76f486aE", scope: !621, file: !578, line: 177, type: !771, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !100)
!774 = !{!775, !776, !777, !778, !780, !782, !784, !804}
!775 = !DILocalVariable(name: "self", arg: 1, scope: !770, file: !578, line: 177, type: !620)
!776 = !DILocalVariable(name: "layout", arg: 2, scope: !770, file: !578, line: 177, type: !498)
!777 = !DILocalVariable(name: "zeroed", arg: 3, scope: !770, file: !578, line: 177, type: !108)
!778 = !DILocalVariable(name: "size", scope: !779, file: !578, line: 181, type: !96, align: 8)
!779 = distinct !DILexicalBlock(scope: !770, file: !578, line: 181, column: 13)
!780 = !DILocalVariable(name: "raw_ptr", scope: !781, file: !578, line: 182, type: !271, align: 8)
!781 = distinct !DILexicalBlock(scope: !779, file: !578, line: 182, column: 17)
!782 = !DILocalVariable(name: "ptr", scope: !783, file: !578, line: 183, type: !661, align: 8)
!783 = distinct !DILexicalBlock(scope: !781, file: !578, line: 183, column: 17)
!784 = !DILocalVariable(name: "residual", scope: !785, file: !578, line: 183, type: !786, align: 1)
!785 = distinct !DILexicalBlock(scope: !781, file: !578, line: 183, column: 66)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, core::alloc::AllocError>", scope: !436, file: !10, align: 8, flags: DIFlagPublic, elements: !787, templateParams: !100, identifier: "16f53acdd53884bed537ed5aa4f29ebb")
!787 = !{!788}
!788 = !DICompositeType(tag: DW_TAG_variant_part, scope: !786, file: !10, align: 8, elements: !789, templateParams: !100, identifier: "92576a0403cbd58c8bfd0307f5d12d7d")
!789 = !{!790, !800}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !788, file: !10, baseType: !791, align: 8)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !786, file: !10, align: 8, flags: DIFlagPublic, elements: !792, templateParams: !798, identifier: "462a6300a912b56adec3a76ee0c3416")
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !791, file: !10, baseType: !794, align: 8, flags: DIFlagPublic)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "Infallible", scope: !795, file: !10, align: 8, flags: DIFlagPublic, elements: !796, templateParams: !100, identifier: "f3e21292644c3287d9049ab8ceb58c7d")
!795 = !DINamespace(name: "convert", scope: !13)
!796 = !{!797}
!797 = !DICompositeType(tag: DW_TAG_variant_part, scope: !794, file: !10, align: 8, elements: !100, identifier: "6b3a6612f7f13bb0d37474513ef78b9")
!798 = !{!799, !613}
!799 = !DITemplateTypeParameter(name: "T", type: !794)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !788, file: !10, baseType: !801, align: 8)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !786, file: !10, align: 8, flags: DIFlagPublic, elements: !802, templateParams: !798, identifier: "549eef95eda45b53be0d806aeae46255")
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !801, file: !10, baseType: !614, align: 8, flags: DIFlagPublic)
!804 = !DILocalVariable(name: "val", scope: !805, file: !578, line: 183, type: !661, align: 8)
!805 = distinct !DILexicalBlock(scope: !781, file: !578, line: 183, column: 27)
!806 = !DILocation(line: 183, column: 66, scope: !785)
!807 = !DILocation(line: 1548, column: 57, scope: !808, inlinedAt: !819)
!808 = distinct !DILexicalBlock(scope: !809, file: !263, line: 1548, column: 5)
!809 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h0eafa79980456c5dE", scope: !590, file: !263, line: 1548, type: !810, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !812, retainedNodes: !813)
!810 = !DISubroutineType(types: !811)
!811 = !{!590, !661, !96}
!812 = !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h0eafa79980456c5dE", scope: !590, file: !263, line: 1548, type: !810, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!813 = !{!814, !815, !816, !818}
!814 = !DILocalVariable(name: "data", arg: 1, scope: !808, file: !263, line: 1548, type: !661)
!815 = !DILocalVariable(name: "len", scope: !808, file: !263, line: 1548, type: !96, align: 8)
!816 = !DILocalVariable(name: "data", arg: 1, scope: !817, file: !263, line: 1548, type: !661)
!817 = distinct !DILexicalBlock(scope: !809, file: !263, line: 1548, column: 5)
!818 = !DILocalVariable(name: "len", arg: 2, scope: !817, file: !263, line: 1548, type: !96)
!819 = !DILocation(line: 179, column: 21, scope: !770)
!820 = !DILocation(line: 833, column: 56, scope: !821, inlinedAt: !831)
!821 = distinct !DILexicalBlock(scope: !822, file: !114, line: 833, column: 1)
!822 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<u8>", linkageName: "_ZN4core3ptr24slice_from_raw_parts_mut17h24d9c9352a6284caE", scope: !22, file: !114, line: 833, type: !823, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!710, !271, !96}
!825 = !{!826, !827, !828, !830}
!826 = !DILocalVariable(name: "data", arg: 1, scope: !821, file: !114, line: 833, type: !271)
!827 = !DILocalVariable(name: "len", scope: !821, file: !114, line: 833, type: !96, align: 8)
!828 = !DILocalVariable(name: "data", arg: 1, scope: !829, file: !114, line: 833, type: !271)
!829 = distinct !DILexicalBlock(scope: !822, file: !114, line: 833, column: 1)
!830 = !DILocalVariable(name: "len", arg: 2, scope: !829, file: !114, line: 833, type: !96)
!831 = !DILocation(line: 1550, column: 38, scope: !808, inlinedAt: !819)
!832 = !DILocation(line: 130, column: 5, scope: !833, inlinedAt: !845)
!833 = distinct !DILexicalBlock(scope: !835, file: !834, line: 128, column: 1)
!834 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/metadata.rs", directory: "", checksumkind: CSK_MD5, checksum: "3e5f46ed28de51d38cc460b6ffb611d6")
!835 = distinct !DISubprogram(name: "from_raw_parts_mut<[u8]>", linkageName: "_ZN4core3ptr8metadata18from_raw_parts_mut17h8a6c4a8449b12c59E", scope: !836, file: !834, line: 128, type: !837, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !839)
!836 = !DINamespace(name: "metadata", scope: !22)
!837 = !DISubroutineType(types: !838)
!838 = !{!710, !185, !96}
!839 = !{!840, !841, !842, !844}
!840 = !DILocalVariable(name: "data_pointer", arg: 1, scope: !833, file: !834, line: 129, type: !185)
!841 = !DILocalVariable(name: "metadata", scope: !833, file: !834, line: 130, type: !96, align: 8)
!842 = !DILocalVariable(name: "data_pointer", arg: 1, scope: !843, file: !834, line: 129, type: !185)
!843 = distinct !DILexicalBlock(scope: !835, file: !834, line: 128, column: 1)
!844 = !DILocalVariable(name: "metadata", arg: 2, scope: !843, file: !834, line: 130, type: !96)
!845 = !DILocation(line: 834, column: 5, scope: !821, inlinedAt: !831)
!846 = !DILocalVariable(name: "err", scope: !847, file: !848, line: 1206, type: !614, align: 1)
!847 = distinct !DILexicalBlock(scope: !849, file: !848, line: 1206, column: 5)
!848 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/option.rs", directory: "", checksumkind: CSK_MD5, checksum: "290dd9078744531e3e1c26de62cd5c06")
!849 = distinct !DISubprogram(name: "ok_or<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_ZN4core6option15Option$LT$T$GT$5ok_or17h5aa35e194210062bE", scope: !850, file: !848, line: 1206, type: !863, scopeLine: 1206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !873, declaration: !879, retainedNodes: !880)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ptr::non_null::NonNull<u8>>", scope: !378, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !851, templateParams: !100, identifier: "a239d5db0ccf59b66926bb24d81864cc")
!851 = !{!852}
!852 = !DICompositeType(tag: DW_TAG_variant_part, scope: !850, file: !10, size: 64, align: 64, elements: !853, templateParams: !100, identifier: "7ed72f02d9e672dc96755724b6dc071", discriminator: !862)
!853 = !{!854, !858}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !852, file: !10, baseType: !855, size: 64, align: 64, extraData: i128 0)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !850, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !100, templateParams: !856, identifier: "57b67f878ac73661163bb0411bfff5fe")
!856 = !{!857}
!857 = !DITemplateTypeParameter(name: "T", type: !661)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !852, file: !10, baseType: !859, size: 64, align: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !850, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !860, templateParams: !856, identifier: "240864814bd2fd794af7ef3766721a66")
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !859, file: !10, baseType: !661, size: 64, align: 64, flags: DIFlagPublic)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !10, baseType: !23, size: 64, align: 64, flags: DIFlagArtificial)
!863 = !DISubroutineType(types: !864)
!864 = !{!865, !850, !614}
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", scope: !436, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !866, templateParams: !100, identifier: "5dfa20e1840451343233803906d1d5b1")
!866 = !{!867}
!867 = !DICompositeType(tag: DW_TAG_variant_part, scope: !865, file: !10, size: 64, align: 64, elements: !868, templateParams: !100, identifier: "14db37e3dd835ff1e1a8073fc0157b01", discriminator: !878)
!868 = !{!869, !874}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !867, file: !10, baseType: !870, size: 64, align: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !865, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !871, templateParams: !873, identifier: "2f99fc3c093c95d81bbb5bbf3e0078a")
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !870, file: !10, baseType: !661, size: 64, align: 64, flags: DIFlagPublic)
!873 = !{!857, !613}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !867, file: !10, baseType: !875, size: 64, align: 64, extraData: i128 0)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !865, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !876, templateParams: !873, identifier: "78c97628f5b8efa664b37b12722f8b02")
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !875, file: !10, baseType: !614, align: 8, flags: DIFlagPublic)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !10, baseType: !23, size: 64, align: 64, flags: DIFlagArtificial)
!879 = !DISubprogram(name: "ok_or<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_ZN4core6option15Option$LT$T$GT$5ok_or17h5aa35e194210062bE", scope: !850, file: !848, line: 1206, type: !863, scopeLine: 1206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !873)
!880 = !{!881, !846, !882}
!881 = !DILocalVariable(name: "self", arg: 1, scope: !847, file: !848, line: 1206, type: !850)
!882 = !DILocalVariable(name: "v", scope: !883, file: !848, line: 1208, type: !661, align: 8)
!883 = distinct !DILexicalBlock(scope: !847, file: !848, line: 1208, column: 13)
!884 = !DILocation(line: 1206, column: 27, scope: !847, inlinedAt: !885)
!885 = !DILocation(line: 183, column: 49, scope: !781)
!886 = !DILocalVariable(name: "e", scope: !887, file: !888, line: 1953, type: !614, align: 1)
!887 = distinct !DILexicalBlock(scope: !889, file: !888, line: 1953, column: 13)
!888 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/result.rs", directory: "", checksumkind: CSK_MD5, checksum: "96c793a7caa821b2d8ecbbb7303607a6")
!889 = distinct !DILexicalBlock(scope: !890, file: !888, line: 1950, column: 5)
!890 = distinct !DISubprogram(name: "branch<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd10ff18ed3896ddfE", scope: !891, file: !888, line: 1950, type: !892, scopeLine: 1950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !873, retainedNodes: !912)
!891 = !DINamespace(name: "{impl#26}", scope: !436)
!892 = !DISubroutineType(types: !893)
!893 = !{!894, !865}
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>", scope: !895, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !897, templateParams: !100, identifier: "5e70b19863fad88286587429ceef13")
!895 = !DINamespace(name: "control_flow", scope: !896)
!896 = !DINamespace(name: "ops", scope: !13)
!897 = !{!898}
!898 = !DICompositeType(tag: DW_TAG_variant_part, scope: !894, file: !10, size: 64, align: 64, elements: !899, templateParams: !100, identifier: "4beed0674a6b600e884191b4954bbaf", discriminator: !911)
!899 = !{!900, !907}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !898, file: !10, baseType: !901, size: 64, align: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !894, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !902, templateParams: !904, identifier: "aac065aef33203e0db2171dd058b3081")
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !901, file: !10, baseType: !661, size: 64, align: 64, flags: DIFlagPublic)
!904 = !{!905, !906}
!905 = !DITemplateTypeParameter(name: "B", type: !786)
!906 = !DITemplateTypeParameter(name: "C", type: !661)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !898, file: !10, baseType: !908, size: 64, align: 64, extraData: i128 0)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !894, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !909, templateParams: !904, identifier: "81279559c5e80d3b20d68eacee11675c")
!909 = !{!910}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !908, file: !10, baseType: !786, align: 8, flags: DIFlagPublic)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !10, baseType: !23, size: 64, align: 64, flags: DIFlagArtificial)
!912 = !{!913, !914, !886}
!913 = !DILocalVariable(name: "self", arg: 1, scope: !889, file: !888, line: 1950, type: !865)
!914 = !DILocalVariable(name: "v", scope: !915, file: !888, line: 1952, type: !661, align: 8)
!915 = distinct !DILexicalBlock(scope: !889, file: !888, line: 1952, column: 13)
!916 = !DILocation(line: 1953, column: 17, scope: !887, inlinedAt: !917)
!917 = !DILocation(line: 183, column: 27, scope: !781)
!918 = !DILocalVariable(name: "residual", scope: !919, file: !888, line: 1962, type: !786, align: 1)
!919 = distinct !DILexicalBlock(scope: !920, file: !888, line: 1962, column: 5)
!920 = distinct !DISubprogram(name: "from_residual<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError, core::alloc::AllocError>", linkageName: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h268fea1411b3149fE", scope: !921, file: !888, line: 1962, type: !922, scopeLine: 1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !935, retainedNodes: !932)
!921 = !DINamespace(name: "{impl#27}", scope: !436)
!922 = !DISubroutineType(types: !923)
!923 = !{!603, !786, !924}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !925, size: 64, align: 64, dwarfAddressSpace: 0)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !926, file: !10, size: 192, align: 64, flags: DIFlagPublic, elements: !928, templateParams: !100, identifier: "d5146904df849cd96e46be40e1a6589")
!926 = !DINamespace(name: "location", scope: !927)
!927 = !DINamespace(name: "panic", scope: !13)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !925, file: !10, baseType: !370, size: 128, align: 64, flags: DIFlagPrivate)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !925, file: !10, baseType: !331, size: 32, align: 32, offset: 128, flags: DIFlagPrivate)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !925, file: !10, baseType: !331, size: 32, align: 32, offset: 160, flags: DIFlagPrivate)
!932 = !{!918, !933}
!933 = !DILocalVariable(name: "e", scope: !934, file: !888, line: 1964, type: !614, align: 1)
!934 = distinct !DILexicalBlock(scope: !919, file: !888, line: 1964, column: 13)
!935 = !{!612, !613, !936}
!936 = !DITemplateTypeParameter(name: "F", type: !614)
!937 = !DILocation(line: 1962, column: 22, scope: !919, inlinedAt: !938)
!938 = !DILocation(line: 183, column: 27, scope: !785)
!939 = !DILocation(line: 1964, column: 17, scope: !934, inlinedAt: !938)
!940 = !DILocalVariable(name: "t", scope: !941, file: !942, line: 768, type: !614, align: 1)
!941 = distinct !DILexicalBlock(scope: !943, file: !942, line: 768, column: 5)
!942 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/convert/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "f336ca7f5b57e62a28aac23c8def4b5d")
!943 = distinct !DISubprogram(name: "from<core::alloc::AllocError>", linkageName: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h44b6a3b7a00987e6E", scope: !944, file: !942, line: 768, type: !945, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !948, retainedNodes: !947)
!944 = !DINamespace(name: "{impl#4}", scope: !795)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !614}
!947 = !{!940}
!948 = !{!949}
!949 = !DITemplateTypeParameter(name: "T", type: !614)
!950 = !DILocation(line: 768, column: 13, scope: !941, inlinedAt: !951)
!951 = !DILocation(line: 1964, column: 27, scope: !934, inlinedAt: !938)
!952 = !DILocation(line: 177, column: 19, scope: !770)
!953 = !DILocation(line: 177, column: 26, scope: !770)
!954 = !DILocation(line: 177, column: 42, scope: !770)
!955 = !DILocation(line: 1548, column: 39, scope: !808, inlinedAt: !819)
!956 = !DILocalVariable(name: "self", arg: 1, scope: !957, file: !263, line: 349, type: !661)
!957 = distinct !DILexicalBlock(scope: !958, file: !263, line: 349, column: 5)
!958 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha629b30d6be92f26E", scope: !661, file: !263, line: 349, type: !664, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !666, retainedNodes: !959)
!959 = !{!956, !960}
!960 = !DILocalVariable(name: "self", arg: 1, scope: !961, file: !263, line: 349, type: !661)
!961 = distinct !DILexicalBlock(scope: !958, file: !263, line: 349, column: 5)
!962 = !DILocation(line: 349, column: 25, scope: !957, inlinedAt: !963)
!963 = !DILocation(line: 1550, column: 75, scope: !808, inlinedAt: !819)
!964 = !DILocation(line: 182, column: 21, scope: !781)
!965 = !DILocalVariable(name: "layout", arg: 1, scope: !966, file: !578, line: 170, type: !498)
!966 = distinct !DILexicalBlock(scope: !967, file: !578, line: 170, column: 1)
!967 = distinct !DISubprogram(name: "alloc_zeroed", linkageName: "_ZN5alloc5alloc12alloc_zeroed17hb60e01d6fa8748ddE", scope: !579, file: !578, line: 170, type: !722, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !968)
!968 = !{!965}
!969 = !DILocation(line: 170, column: 28, scope: !966, inlinedAt: !970)
!970 = !DILocation(line: 182, column: 43, scope: !779)
!971 = !DILocation(line: 1950, column: 15, scope: !889, inlinedAt: !917)
!972 = !DILocation(line: 1206, column: 21, scope: !847, inlinedAt: !885)
!973 = !DILocalVariable(name: "ptr", arg: 1, scope: !974, file: !263, line: 217, type: !710)
!974 = distinct !DILexicalBlock(scope: !975, file: !263, line: 217, column: 5)
!975 = distinct !DISubprogram(name: "new_unchecked<[u8]>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hccbf0227dcff2f37E", scope: !590, file: !263, line: 217, type: !976, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !978, retainedNodes: !979)
!976 = !DISubroutineType(types: !977)
!977 = !{!590, !710}
!978 = !DISubprogram(name: "new_unchecked<[u8]>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hccbf0227dcff2f37E", scope: !590, file: !263, line: 217, type: !976, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!979 = !{!973, !980}
!980 = !DILocalVariable(name: "ptr", arg: 1, scope: !981, file: !263, line: 217, type: !710)
!981 = distinct !DILexicalBlock(scope: !975, file: !263, line: 217, column: 5)
!982 = !DILocation(line: 217, column: 39, scope: !974, inlinedAt: !983)
!983 = !DILocation(line: 1550, column: 18, scope: !808, inlinedAt: !819)
!984 = !DILocation(line: 833, column: 42, scope: !821, inlinedAt: !831)
!985 = !DILocalVariable(name: "self", arg: 1, scope: !986, file: !253, line: 60, type: !271)
!986 = distinct !DILexicalBlock(scope: !987, file: !253, line: 60, column: 5)
!987 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17h1390ffe24cc164c6E", scope: !255, file: !253, line: 60, type: !286, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !156, retainedNodes: !988)
!988 = !{!985, !989, !991}
!989 = !DILocalVariable(name: "self", arg: 1, scope: !990, file: !253, line: 60, type: !271)
!990 = distinct !DILexicalBlock(scope: !987, file: !253, line: 60, column: 5)
!991 = !DILocalVariable(name: "self", arg: 1, scope: !992, file: !253, line: 60, type: !271)
!992 = distinct !DILexicalBlock(scope: !987, file: !253, line: 60, column: 5)
!993 = !DILocation(line: 60, column: 26, scope: !986, inlinedAt: !994)
!994 = !DILocation(line: 834, column: 29, scope: !821, inlinedAt: !831)
!995 = !DILocation(line: 129, column: 5, scope: !833, inlinedAt: !845)
!996 = !DILocation(line: 178, column: 15, scope: !770)
!997 = !DILocalVariable(name: "self", arg: 1, scope: !998, file: !497, line: 128, type: !743)
!998 = distinct !DILexicalBlock(scope: !999, file: !497, line: 128, column: 5)
!999 = distinct !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17h7f08c0ddec50b4f9E", scope: !498, file: !497, line: 128, type: !741, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !744, retainedNodes: !1000)
!1000 = !{!997, !1001}
!1001 = !DILocalVariable(name: "self", arg: 1, scope: !1002, file: !497, line: 128, type: !743)
!1002 = distinct !DILexicalBlock(scope: !999, file: !497, line: 128, column: 5)
!1003 = !DILocation(line: 128, column: 23, scope: !998, inlinedAt: !1004)
!1004 = !DILocation(line: 178, column: 22, scope: !770)
!1005 = !DILocation(line: 129, column: 9, scope: !998, inlinedAt: !1004)
!1006 = !DILocation(line: 181, column: 13, scope: !779)
!1007 = !DILocation(line: 1548, column: 57, scope: !817, inlinedAt: !1008)
!1008 = !DILocation(line: 184, column: 20, scope: !783)
!1009 = !DILocation(line: 833, column: 56, scope: !829, inlinedAt: !1010)
!1010 = !DILocation(line: 1550, column: 38, scope: !817, inlinedAt: !1008)
!1011 = !DILocation(line: 130, column: 5, scope: !843, inlinedAt: !1012)
!1012 = !DILocation(line: 834, column: 5, scope: !829, inlinedAt: !1010)
!1013 = !DILocation(line: 178, column: 9, scope: !770)
!1014 = !DILocation(line: 179, column: 51, scope: !770)
!1015 = !DILocalVariable(name: "self", arg: 1, scope: !1016, file: !497, line: 216, type: !743)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !497, line: 216, column: 5)
!1017 = distinct !DISubprogram(name: "dangling", linkageName: "_ZN4core5alloc6layout6Layout8dangling17h80fe67c37edfddf3E", scope: !498, file: !497, line: 216, type: !1018, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !1020, retainedNodes: !1021)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!661, !743}
!1020 = !DISubprogram(name: "dangling", linkageName: "_ZN4core5alloc6layout6Layout8dangling17h80fe67c37edfddf3E", scope: !498, file: !497, line: 216, type: !1018, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !100)
!1021 = !{!1015}
!1022 = !DILocation(line: 216, column: 27, scope: !1016, inlinedAt: !1023)
!1023 = !DILocation(line: 179, column: 58, scope: !770)
!1024 = !DILocalVariable(name: "self", arg: 1, scope: !1025, file: !497, line: 141, type: !743)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !497, line: 141, column: 5)
!1026 = distinct !DISubprogram(name: "align", linkageName: "_ZN4core5alloc6layout6Layout5align17hd2be565a123078b1E", scope: !498, file: !497, line: 141, type: !741, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !753, retainedNodes: !1027)
!1027 = !{!1024, !1028}
!1028 = !DILocalVariable(name: "self", arg: 1, scope: !1029, file: !497, line: 141, type: !743)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !497, line: 141, column: 5)
!1030 = !DILocation(line: 141, column: 24, scope: !1025, inlinedAt: !1031)
!1031 = !DILocation(line: 218, column: 87, scope: !1016, inlinedAt: !1023)
!1032 = !DILocation(line: 142, column: 9, scope: !1025, inlinedAt: !1031)
!1033 = !DILocalVariable(name: "self", arg: 1, scope: !1034, file: !550, line: 94, type: !504)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !550, line: 94, column: 5)
!1035 = distinct !DISubprogram(name: "as_usize", linkageName: "_ZN4core3ptr9alignment9Alignment8as_usize17hcb338b47c6748ad5E", scope: !504, file: !550, line: 94, type: !761, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !763, retainedNodes: !1036)
!1036 = !{!1033, !1037}
!1037 = !DILocalVariable(name: "self", arg: 1, scope: !1038, file: !550, line: 94, type: !504)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !550, line: 94, column: 5)
!1039 = !DILocation(line: 94, column: 27, scope: !1034, inlinedAt: !1040)
!1040 = !DILocation(line: 142, column: 20, scope: !1025, inlinedAt: !1031)
!1041 = !DILocation(line: 95, column: 9, scope: !1034, inlinedAt: !1040)
!1042 = !DILocalVariable(name: "addr", arg: 1, scope: !1043, file: !114, line: 633, type: !96)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !114, line: 633, column: 1)
!1044 = distinct !DISubprogram(name: "without_provenance_mut<u8>", linkageName: "_ZN4core3ptr22without_provenance_mut17h31a9dd7ce10ab599E", scope: !22, file: !114, line: 633, type: !1045, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!271, !96}
!1047 = !{!1042}
!1048 = !DILocation(line: 633, column: 40, scope: !1043, inlinedAt: !1049)
!1049 = !DILocation(line: 218, column: 41, scope: !1016, inlinedAt: !1023)
!1050 = !DILocation(line: 639, column: 14, scope: !1043, inlinedAt: !1049)
!1051 = !DILocalVariable(name: "ptr", arg: 1, scope: !1052, file: !263, line: 217, type: !271)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !263, line: 217, column: 5)
!1053 = distinct !DISubprogram(name: "new_unchecked<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6b189746002bb7c4E", scope: !661, file: !263, line: 217, type: !1054, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !1056, retainedNodes: !1057)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!661, !271}
!1056 = !DISubprogram(name: "new_unchecked<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6b189746002bb7c4E", scope: !661, file: !263, line: 217, type: !1054, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!1057 = !{!1051, !1058}
!1058 = !DILocalVariable(name: "ptr", arg: 1, scope: !1059, file: !263, line: 217, type: !271)
!1059 = distinct !DILexicalBlock(scope: !1053, file: !263, line: 217, column: 5)
!1060 = !DILocation(line: 217, column: 39, scope: !1052, inlinedAt: !1061)
!1061 = !DILocation(line: 218, column: 18, scope: !1016, inlinedAt: !1023)
!1062 = !DILocation(line: 220, column: 13, scope: !1052, inlinedAt: !1061)
!1063 = !DILocation(line: 182, column: 34, scope: !779)
!1064 = !DILocation(line: 224, column: 32, scope: !1052, inlinedAt: !1061)
!1065 = !DILocation(line: 224, column: 13, scope: !1052, inlinedAt: !1061)
!1066 = !DILocation(line: 350, column: 9, scope: !957, inlinedAt: !963)
!1067 = !DILocation(line: 61, column: 9, scope: !986, inlinedAt: !994)
!1068 = !DILocation(line: 135, column: 52, scope: !833, inlinedAt: !845)
!1069 = !DILocation(line: 135, column: 36, scope: !833, inlinedAt: !845)
!1070 = !DILocation(line: 135, column: 14, scope: !833, inlinedAt: !845)
!1071 = !DILocation(line: 220, column: 13, scope: !974, inlinedAt: !983)
!1072 = !DILocation(line: 222, column: 33, scope: !974, inlinedAt: !983)
!1073 = !DILocation(line: 224, column: 32, scope: !974, inlinedAt: !983)
!1074 = !DILocation(line: 224, column: 13, scope: !974, inlinedAt: !983)
!1075 = !DILocation(line: 179, column: 18, scope: !770)
!1076 = !DILocation(line: 179, column: 72, scope: !770)
!1077 = !DILocation(line: 187, column: 6, scope: !770)
!1078 = !DILocation(line: 182, column: 79, scope: !779)
!1079 = !DILocation(line: 182, column: 73, scope: !779)
!1080 = !DILocation(line: 182, column: 31, scope: !779)
!1081 = !DILocation(line: 182, column: 56, scope: !779)
!1082 = !DILocation(line: 171, column: 34, scope: !966, inlinedAt: !970)
!1083 = !DILocation(line: 128, column: 23, scope: !1002, inlinedAt: !1084)
!1084 = !DILocation(line: 171, column: 41, scope: !966, inlinedAt: !970)
!1085 = !DILocation(line: 129, column: 9, scope: !1002, inlinedAt: !1084)
!1086 = !DILocation(line: 171, column: 49, scope: !966, inlinedAt: !970)
!1087 = !DILocation(line: 141, column: 24, scope: !1029, inlinedAt: !1088)
!1088 = !DILocation(line: 171, column: 56, scope: !966, inlinedAt: !970)
!1089 = !DILocation(line: 142, column: 9, scope: !1029, inlinedAt: !1088)
!1090 = !DILocation(line: 94, column: 27, scope: !1038, inlinedAt: !1091)
!1091 = !DILocation(line: 142, column: 20, scope: !1029, inlinedAt: !1088)
!1092 = !DILocation(line: 95, column: 9, scope: !1038, inlinedAt: !1091)
!1093 = !DILocation(line: 171, column: 14, scope: !966, inlinedAt: !970)
!1094 = !DILocation(line: 183, column: 40, scope: !781)
!1095 = !DILocalVariable(name: "ptr", arg: 1, scope: !1096, file: !263, line: 245, type: !271)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !263, line: 245, column: 5)
!1097 = distinct !DISubprogram(name: "new<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17ha5d49ad0ed36039bE", scope: !661, file: !263, line: 245, type: !1098, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !1100, retainedNodes: !1101)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!850, !271}
!1100 = !DISubprogram(name: "new<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17ha5d49ad0ed36039bE", scope: !661, file: !263, line: 245, type: !1098, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!1101 = !{!1095}
!1102 = !DILocation(line: 245, column: 22, scope: !1096, inlinedAt: !917)
!1103 = !DILocalVariable(name: "self", arg: 1, scope: !1104, file: !253, line: 35, type: !271)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !253, line: 35, column: 5)
!1105 = distinct !DISubprogram(name: "is_null<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4172f49f1fd0000fE", scope: !255, file: !253, line: 35, type: !269, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !1106)
!1106 = !{!1103}
!1107 = !DILocation(line: 35, column: 26, scope: !1104, inlinedAt: !1108)
!1108 = !DILocation(line: 246, column: 17, scope: !1096, inlinedAt: !917)
!1109 = !DILocalVariable(name: "ptr", arg: 1, scope: !1110, file: !253, line: 37, type: !271)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !253, line: 37, column: 9)
!1111 = distinct !DISubprogram(name: "runtime_impl", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null12runtime_impl17h9668bc637869e275E", scope: !268, file: !253, line: 37, type: !269, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !1112)
!1112 = !{!1109}
!1113 = !DILocation(line: 37, column: 25, scope: !1110, inlinedAt: !1114)
!1114 = !DILocation(line: 52, column: 18, scope: !1104, inlinedAt: !1108)
!1115 = !DILocalVariable(name: "self", arg: 1, scope: !1116, file: !253, line: 214, type: !271)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !253, line: 214, column: 5)
!1117 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h9f2bb37c00384468E", scope: !255, file: !253, line: 214, type: !278, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !1118)
!1118 = !{!1115}
!1119 = !DILocation(line: 214, column: 17, scope: !1116, inlinedAt: !1120)
!1120 = !DILocation(line: 38, column: 17, scope: !1110, inlinedAt: !1114)
!1121 = !DILocation(line: 60, column: 26, scope: !990, inlinedAt: !1122)
!1122 = !DILocation(line: 218, column: 38, scope: !1116, inlinedAt: !1120)
!1123 = !DILocation(line: 217, column: 39, scope: !1059, inlinedAt: !1124)
!1124 = !DILocation(line: 248, column: 27, scope: !1096, inlinedAt: !917)
!1125 = !DILocation(line: 218, column: 18, scope: !1116, inlinedAt: !1120)
!1126 = !DILocation(line: 246, column: 13, scope: !1096, inlinedAt: !917)
!1127 = !DILocation(line: 250, column: 13, scope: !1096, inlinedAt: !917)
!1128 = !DILocation(line: 1209, column: 21, scope: !847, inlinedAt: !885)
!1129 = !DILocation(line: 1964, column: 23, scope: !934, inlinedAt: !938)
!1130 = !DILocation(line: 220, column: 13, scope: !1059, inlinedAt: !1124)
!1131 = !DILocation(line: 224, column: 13, scope: !1059, inlinedAt: !1124)
!1132 = !DILocation(line: 248, column: 13, scope: !1096, inlinedAt: !917)
!1133 = !DILocation(line: 1208, column: 18, scope: !847, inlinedAt: !885)
!1134 = !DILocation(line: 1208, column: 18, scope: !883, inlinedAt: !885)
!1135 = !DILocation(line: 1208, column: 24, scope: !883, inlinedAt: !885)
!1136 = !DILocation(line: 1952, column: 16, scope: !889, inlinedAt: !917)
!1137 = !DILocation(line: 1952, column: 16, scope: !915, inlinedAt: !917)
!1138 = !DILocation(line: 1952, column: 22, scope: !915, inlinedAt: !917)
!1139 = !DILocation(line: 183, column: 21, scope: !783)
!1140 = !DILocation(line: 183, column: 27, scope: !805)
!1141 = !DILocation(line: 1548, column: 39, scope: !817, inlinedAt: !1008)
!1142 = !DILocation(line: 349, column: 25, scope: !961, inlinedAt: !1143)
!1143 = !DILocation(line: 1550, column: 75, scope: !817, inlinedAt: !1008)
!1144 = !DILocation(line: 350, column: 9, scope: !961, inlinedAt: !1143)
!1145 = !DILocation(line: 833, column: 42, scope: !829, inlinedAt: !1010)
!1146 = !DILocation(line: 60, column: 26, scope: !992, inlinedAt: !1147)
!1147 = !DILocation(line: 834, column: 29, scope: !829, inlinedAt: !1010)
!1148 = !DILocation(line: 61, column: 9, scope: !992, inlinedAt: !1147)
!1149 = !DILocation(line: 129, column: 5, scope: !843, inlinedAt: !1012)
!1150 = !DILocation(line: 135, column: 36, scope: !843, inlinedAt: !1012)
!1151 = !DILocation(line: 135, column: 14, scope: !843, inlinedAt: !1012)
!1152 = !DILocation(line: 217, column: 39, scope: !981, inlinedAt: !1153)
!1153 = !DILocation(line: 1550, column: 18, scope: !817, inlinedAt: !1008)
!1154 = !DILocation(line: 220, column: 13, scope: !981, inlinedAt: !1153)
!1155 = !DILocation(line: 224, column: 13, scope: !981, inlinedAt: !1153)
!1156 = !DILocation(line: 184, column: 17, scope: !783)
!1157 = !DILocation(line: 185, column: 13, scope: !770)
!1158 = distinct !DISubprogram(name: "into_inner<usize, alloc::alloc::Global>", linkageName: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$10into_inner17h9c607af038d622fdE", scope: !1160, file: !1159, line: 606, type: !1162, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !1166, retainedNodes: !1164)
!1159 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/alloc/src/boxed.rs", directory: "", checksumkind: CSK_MD5, checksum: "c580c98b6870e10ef20edb2fa33cc24d")
!1160 = !DINamespace(name: "{impl#1}", scope: !1161)
!1161 = !DINamespace(name: "boxed", scope: !580)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!96, !236}
!1164 = !{!1165}
!1165 = !DILocalVariable(name: "boxed", arg: 1, scope: !1158, file: !1159, line: 606, type: !236)
!1166 = !{!175, !1167}
!1167 = !DITemplateTypeParameter(name: "A", type: !621)
!1168 = !DILocation(line: 606, column: 23, scope: !1158)
!1169 = !DILocation(line: 607, column: 9, scope: !1158)
!1170 = !DILocation(line: 608, column: 5, scope: !1158)
!1171 = !DILocation(line: 606, column: 5, scope: !1158)
!1172 = !DILocation(line: 608, column: 6, scope: !1158)
!1173 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h9f31db83a5033524E", scope: !600, file: !578, line: 251, type: !1174, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !620, !661, !498}
!1176 = !{!1177, !1178, !1179}
!1177 = !DILocalVariable(name: "self", arg: 1, scope: !1173, file: !578, line: 251, type: !620)
!1178 = !DILocalVariable(name: "ptr", arg: 2, scope: !1173, file: !578, line: 251, type: !661)
!1179 = !DILocalVariable(name: "layout", arg: 3, scope: !1173, file: !578, line: 251, type: !498)
!1180 = !DILocation(line: 251, column: 26, scope: !1173)
!1181 = !DILocation(line: 251, column: 33, scope: !1173)
!1182 = !DILocalVariable(name: "self", arg: 1, scope: !1183, file: !263, line: 349, type: !661)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !263, line: 349, column: 5)
!1184 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha629b30d6be92f26E", scope: !661, file: !263, line: 349, type: !664, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !666, retainedNodes: !1185)
!1185 = !{!1182}
!1186 = !DILocation(line: 349, column: 25, scope: !1183, inlinedAt: !1187)
!1187 = !DILocation(line: 255, column: 34, scope: !1173)
!1188 = !DILocation(line: 251, column: 51, scope: !1173)
!1189 = !DILocalVariable(name: "layout", arg: 2, scope: !1190, file: !578, line: 117, type: !498)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !578, line: 117, column: 1)
!1191 = distinct !DISubprogram(name: "dealloc", linkageName: "_ZN5alloc5alloc7dealloc17hb57494acc6b3fff6E", scope: !579, file: !578, line: 117, type: !1192, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !271, !498}
!1194 = !{!1195, !1189}
!1195 = !DILocalVariable(name: "ptr", arg: 1, scope: !1190, file: !578, line: 117, type: !271)
!1196 = !DILocation(line: 117, column: 37, scope: !1190, inlinedAt: !1197)
!1197 = !DILocation(line: 255, column: 22, scope: !1173)
!1198 = !DILocation(line: 252, column: 12, scope: !1173)
!1199 = !DILocalVariable(name: "self", arg: 1, scope: !1200, file: !497, line: 128, type: !743)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !497, line: 128, column: 5)
!1201 = distinct !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17h7f08c0ddec50b4f9E", scope: !498, file: !497, line: 128, type: !741, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !744, retainedNodes: !1202)
!1202 = !{!1199, !1203}
!1203 = !DILocalVariable(name: "self", arg: 1, scope: !1204, file: !497, line: 128, type: !743)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !497, line: 128, column: 5)
!1205 = !DILocation(line: 128, column: 23, scope: !1200, inlinedAt: !1206)
!1206 = !DILocation(line: 252, column: 19, scope: !1173)
!1207 = !DILocation(line: 129, column: 9, scope: !1200, inlinedAt: !1206)
!1208 = !DILocation(line: 252, column: 9, scope: !1173)
!1209 = !DILocation(line: 350, column: 9, scope: !1183, inlinedAt: !1187)
!1210 = !DILocation(line: 117, column: 23, scope: !1190, inlinedAt: !1197)
!1211 = !DILocation(line: 255, column: 44, scope: !1173)
!1212 = !DILocation(line: 118, column: 34, scope: !1190, inlinedAt: !1197)
!1213 = !DILocation(line: 128, column: 23, scope: !1204, inlinedAt: !1214)
!1214 = !DILocation(line: 118, column: 41, scope: !1190, inlinedAt: !1197)
!1215 = !DILocation(line: 129, column: 9, scope: !1204, inlinedAt: !1214)
!1216 = !DILocation(line: 118, column: 49, scope: !1190, inlinedAt: !1197)
!1217 = !DILocalVariable(name: "self", arg: 1, scope: !1218, file: !497, line: 141, type: !743)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !497, line: 141, column: 5)
!1219 = distinct !DISubprogram(name: "align", linkageName: "_ZN4core5alloc6layout6Layout5align17hd2be565a123078b1E", scope: !498, file: !497, line: 141, type: !741, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !753, retainedNodes: !1220)
!1220 = !{!1217}
!1221 = !DILocation(line: 141, column: 24, scope: !1218, inlinedAt: !1222)
!1222 = !DILocation(line: 118, column: 56, scope: !1190, inlinedAt: !1197)
!1223 = !DILocation(line: 142, column: 9, scope: !1218, inlinedAt: !1222)
!1224 = !DILocalVariable(name: "self", arg: 1, scope: !1225, file: !550, line: 94, type: !504)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !550, line: 94, column: 5)
!1226 = distinct !DISubprogram(name: "as_usize", linkageName: "_ZN4core3ptr9alignment9Alignment8as_usize17hcb338b47c6748ad5E", scope: !504, file: !550, line: 94, type: !761, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !763, retainedNodes: !1227)
!1227 = !{!1224}
!1228 = !DILocation(line: 94, column: 27, scope: !1225, inlinedAt: !1229)
!1229 = !DILocation(line: 142, column: 20, scope: !1218, inlinedAt: !1222)
!1230 = !DILocation(line: 95, column: 9, scope: !1225, inlinedAt: !1229)
!1231 = !DILocation(line: 118, column: 14, scope: !1190, inlinedAt: !1197)
!1232 = !DILocation(line: 257, column: 6, scope: !1173)
!1233 = distinct !DISubprogram(name: "drop<usize, alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f74182a0b90b0d9E", scope: !1234, file: !1159, line: 1236, type: !1235, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !1166, retainedNodes: !1238)
!1234 = !DINamespace(name: "{impl#8}", scope: !1161)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !1237}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::boxed::Box<usize, alloc::alloc::Global>", baseType: !236, size: 64, align: 64, dwarfAddressSpace: 0)
!1238 = !{!1239, !1240, !1240, !1252}
!1239 = !DILocalVariable(name: "self", arg: 1, scope: !1233, file: !1159, line: 1236, type: !1237)
!1240 = !DILocalVariable(name: "ptr", scope: !1241, file: !1159, line: 1239, type: !1242, align: 8)
!1241 = distinct !DILexicalBlock(scope: !1233, file: !1159, line: 1239, column: 9)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<usize>", scope: !1243, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !1244, templateParams: !174, identifier: "c925258607b498da51c0e02332223b66")
!1243 = !DINamespace(name: "unique", scope: !22)
!1244 = !{!1245, !1249}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1242, file: !10, baseType: !1246, size: 64, align: 64, flags: DIFlagPrivate)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<usize>", scope: !245, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !1247, templateParams: !174, identifier: "e85d6f83163074652cad96c35d396b9b")
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1246, file: !10, baseType: !509, size: 64, align: 64, flags: DIFlagPrivate)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1242, file: !10, baseType: !1250, align: 8, offset: 64, flags: DIFlagPrivate)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<usize>", scope: !1251, file: !10, align: 8, flags: DIFlagPublic, elements: !100, templateParams: !174, identifier: "4d8bb13a741f2361a5cf7de1310400c2")
!1251 = !DINamespace(name: "marker", scope: !13)
!1252 = !DILocalVariable(name: "layout", scope: !1253, file: !1159, line: 1242, type: !498, align: 8)
!1253 = distinct !DILexicalBlock(scope: !1241, file: !1159, line: 1242, column: 13)
!1254 = !DILocation(line: 1236, column: 13, scope: !1233)
!1255 = !DILocation(line: 1242, column: 17, scope: !1253)
!1256 = !DILocalVariable(name: "unique", scope: !1257, file: !263, line: 1828, type: !1262, align: 8)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !263, line: 1828, column: 5)
!1258 = distinct !DISubprogram(name: "from<u8>", linkageName: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h6678c392313ea688E", scope: !1259, file: !263, line: 1828, type: !1260, scopeLine: 1828, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, retainedNodes: !1267)
!1259 = !DINamespace(name: "{impl#16}", scope: !245)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!661, !1262}
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !1243, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !1263, templateParams: !146, identifier: "16d43c7798aa6d2999ca168a04d3c1e")
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1262, file: !10, baseType: !661, size: 64, align: 64, flags: DIFlagPrivate)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1262, file: !10, baseType: !1266, align: 8, offset: 64, flags: DIFlagPrivate)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !1251, file: !10, align: 8, flags: DIFlagPublic, elements: !100, templateParams: !146, identifier: "c7d3b188da491e9ffeb3aeb47d640bea")
!1267 = !{!1256, !1256}
!1268 = !DILocation(line: 1828, column: 13, scope: !1257, inlinedAt: !1269)
!1269 = !DILocation(line: 1244, column: 35, scope: !1253)
!1270 = !DILocalVariable(name: "self", scope: !1271, file: !1272, line: 112, type: !1262, align: 8)
!1271 = distinct !DILexicalBlock(scope: !1273, file: !1272, line: 112, column: 5)
!1272 = !DIFile(filename: "/home/swli/rust-isolation/rust/library/core/src/ptr/unique.rs", directory: "", checksumkind: CSK_MD5, checksum: "732da2a5cbcfe11170beb774dbba4d93")
!1273 = distinct !DISubprogram(name: "as_non_null_ptr<u8>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$15as_non_null_ptr17h5baf1ac85f01294dE", scope: !1262, file: !1272, line: 112, type: !1260, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !146, declaration: !1274, retainedNodes: !1275)
!1274 = !DISubprogram(name: "as_non_null_ptr<u8>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$15as_non_null_ptr17h5baf1ac85f01294dE", scope: !1262, file: !1272, line: 112, type: !1260, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !146)
!1275 = !{!1270, !1270}
!1276 = !DILocation(line: 112, column: 34, scope: !1271, inlinedAt: !1277)
!1277 = !DILocation(line: 1829, column: 16, scope: !1257, inlinedAt: !1269)
!1278 = !DILocation(line: 1239, column: 19, scope: !1233)
!1279 = !DILocation(line: 1239, column: 13, scope: !1241)
!1280 = !DILocalVariable(name: "self", scope: !1281, file: !1272, line: 105, type: !1242, align: 8)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !1272, line: 105, column: 5)
!1282 = distinct !DISubprogram(name: "as_ptr<usize>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hea4731c0fac51c4dE", scope: !1242, file: !1272, line: 105, type: !1283, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !174, declaration: !1285, retainedNodes: !1286)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!170, !1242}
!1285 = !DISubprogram(name: "as_ptr<usize>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hea4731c0fac51c4dE", scope: !1242, file: !1272, line: 105, type: !1283, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !174)
!1286 = !{!1280, !1280}
!1287 = !DILocation(line: 105, column: 25, scope: !1281, inlinedAt: !1288)
!1288 = !DILocation(line: 1242, column: 52, scope: !1241)
!1289 = !DILocalVariable(name: "self", arg: 1, scope: !1290, file: !263, line: 349, type: !1246)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !263, line: 349, column: 5)
!1291 = distinct !DISubprogram(name: "as_ptr<usize>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3c5feabf1d056dd6E", scope: !1246, file: !263, line: 349, type: !1292, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !174, declaration: !1294, retainedNodes: !1295)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!170, !1246}
!1294 = !DISubprogram(name: "as_ptr<usize>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3c5feabf1d056dd6E", scope: !1246, file: !263, line: 349, type: !1292, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !174)
!1295 = !{!1289, !1296}
!1296 = !DILocalVariable(name: "self", arg: 1, scope: !1297, file: !263, line: 349, type: !1246)
!1297 = distinct !DILexicalBlock(scope: !1291, file: !263, line: 349, column: 5)
!1298 = !DILocation(line: 349, column: 25, scope: !1290, inlinedAt: !1299)
!1299 = !DILocation(line: 106, column: 22, scope: !1281, inlinedAt: !1288)
!1300 = !DILocalVariable(name: "self", scope: !1301, file: !1272, line: 145, type: !1242, align: 8)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !1272, line: 145, column: 5)
!1302 = distinct !DISubprogram(name: "cast<usize, u8>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h657379331783a0d5E", scope: !1242, file: !1272, line: 145, type: !1303, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !1306, declaration: !1305, retainedNodes: !1307)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1262, !1242}
!1305 = !DISubprogram(name: "cast<usize, u8>", linkageName: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h657379331783a0d5E", scope: !1242, file: !1272, line: 145, type: !1303, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1306)
!1306 = !{!175, !701}
!1307 = !{!1300, !1300}
!1308 = !DILocation(line: 145, column: 26, scope: !1301, inlinedAt: !1309)
!1309 = !DILocation(line: 1244, column: 50, scope: !1253)
!1310 = !DILocalVariable(name: "self", arg: 1, scope: !1311, file: !263, line: 473, type: !1246)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !263, line: 473, column: 5)
!1312 = distinct !DISubprogram(name: "cast<usize, u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h617921088ce172cfE", scope: !1246, file: !263, line: 473, type: !1313, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !1306, declaration: !1315, retainedNodes: !1316)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!661, !1246}
!1315 = !DISubprogram(name: "cast<usize, u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h617921088ce172cfE", scope: !1246, file: !263, line: 473, type: !1313, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1306)
!1316 = !{!1310}
!1317 = !DILocation(line: 473, column: 26, scope: !1311, inlinedAt: !1318)
!1318 = !DILocation(line: 148, column: 40, scope: !1301, inlinedAt: !1309)
!1319 = !DILocation(line: 349, column: 25, scope: !1297, inlinedAt: !1320)
!1320 = !DILocation(line: 475, column: 42, scope: !1311, inlinedAt: !1318)
!1321 = !DILocation(line: 1242, column: 26, scope: !1241)
!1322 = !DILocation(line: 1243, column: 16, scope: !1253)
!1323 = !DILocalVariable(name: "self", arg: 1, scope: !1324, file: !497, line: 128, type: !743)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !497, line: 128, column: 5)
!1325 = distinct !DISubprogram(name: "size", linkageName: "_ZN4core5alloc6layout6Layout4size17h7f08c0ddec50b4f9E", scope: !498, file: !497, line: 128, type: !741, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !100, declaration: !744, retainedNodes: !1326)
!1326 = !{!1323}
!1327 = !DILocation(line: 128, column: 23, scope: !1324, inlinedAt: !1328)
!1328 = !DILocation(line: 1243, column: 23, scope: !1253)
!1329 = !DILocation(line: 129, column: 9, scope: !1324, inlinedAt: !1328)
!1330 = !DILocation(line: 1243, column: 13, scope: !1253)
!1331 = !DILocation(line: 1244, column: 17, scope: !1253)
!1332 = !DILocation(line: 475, column: 18, scope: !1311, inlinedAt: !1318)
!1333 = !DILocation(line: 1244, column: 59, scope: !1253)
!1334 = !DILocation(line: 1247, column: 6, scope: !1233)
!1335 = distinct !DISubprogram(name: "as_mut<usize, alloc::alloc::Global>", linkageName: "_ZN80_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$T$GT$$GT$6as_mut17h2957cb490726edbbE", scope: !1336, file: !1159, line: 2116, type: !1337, scopeLine: 2116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !1166, retainedNodes: !1340)
!1336 = !DINamespace(name: "{impl#60}", scope: !1161)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!1339, !1237}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !96, size: 64, align: 64, dwarfAddressSpace: 0)
!1340 = !{!1341}
!1341 = !DILocalVariable(name: "self", arg: 1, scope: !1335, file: !1159, line: 2116, type: !1237)
!1342 = !DILocation(line: 2116, column: 15, scope: !1335)
!1343 = !DILocation(line: 2117, column: 9, scope: !1335)
!1344 = !DILocation(line: 2118, column: 6, scope: !1335)
!1345 = distinct !DISubprogram(name: "foo", linkageName: "_ZN8lib_demo3foo17he7395063e1b497eaE", scope: !1347, file: !1346, line: 5, type: !1348, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, templateParams: !100, retainedNodes: !1350)
!1346 = !DIFile(filename: "src/lib.rs", directory: "/home/swli/rust-isolation/lib_demo", checksumkind: CSK_MD5, checksum: "194292da4990575bcd6501c684ea12b0")
!1347 = !DINamespace(name: "lib_demo", scope: null)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!96}
!1350 = !{!1351, !1353}
!1351 = !DILocalVariable(name: "b", scope: !1352, file: !1346, line: 6, type: !236, align: 8)
!1352 = distinct !DILexicalBlock(scope: !1345, file: !1346, line: 6, column: 4)
!1353 = !DILocalVariable(name: "p", scope: !1354, file: !1346, line: 8, type: !1339, align: 8)
!1354 = distinct !DILexicalBlock(scope: !1352, file: !1346, line: 8, column: 5)
!1355 = !{!"unsafe_alloca"}
!1356 = !DILocation(line: 6, column: 8, scope: !1352)
!1357 = !DILocation(line: 8, column: 9, scope: !1354)
!1358 = !DILocation(line: 6, column: 16, scope: !1345)
!1359 = !DILocalVariable(name: "x", arg: 1, scope: !1360, file: !1159, line: 216, type: !96)
!1360 = distinct !DISubprogram(name: "new<usize>", linkageName: "_ZN5alloc5boxed12Box$LT$T$GT$3new17h3b880e2c45463fa8E", scope: !1361, file: !1159, line: 216, type: !1362, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, templateParams: !174, retainedNodes: !1364)
!1361 = !DINamespace(name: "{impl#0}", scope: !1161)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!236, !96}
!1364 = !{!1359}
!1365 = !DILocation(line: 216, column: 16, scope: !1360, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 6, column: 16, scope: !1345)
!1367 = !DILocation(line: 218, column: 9, scope: !1360, inlinedAt: !1366)
!1368 = !DILocation(line: 216, column: 5, scope: !1360, inlinedAt: !1366)
!1369 = !DILocation(line: 218, column: 18, scope: !1360, inlinedAt: !1366)
!1370 = !DILocation(line: 8, column: 13, scope: !1352)
!1371 = !DILocation(line: 12, column: 1, scope: !1345)
!1372 = !{i8 0, i8 2}
!1373 = !DILocation(line: 9, column: 30, scope: !1354)
!1374 = !DILocation(line: 9, column: 5, scope: !1354)
!1375 = !DILocation(line: 11, column: 20, scope: !1352)
!1376 = !DILocation(line: 11, column: 4, scope: !1352)
!1377 = !DILocation(line: 12, column: 2, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1345, file: !1346, discriminator: 0)
!1379 = !DILocation(line: 5, column: 1, scope: !1345)
