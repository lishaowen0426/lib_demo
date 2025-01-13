; ModuleID = '/home/swli/rust-isolation/lib_demo/svf-test/test.ll'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"
; Define a struct type
%MyStruct = type { i32, float }

; Define the callee function
define void @callee(%MyStruct* %ptr, %MyStruct %val) {
entry:
  ; Empty body
  ret void
}

; Define the caller function
define void @caller() {
entry:
  ; Step 1: Allocate an array of two structs
  %array = alloca [2 x %MyStruct], align 16

  ; Step 2: Get a pointer to the second element of the array
  %second_elem_ptr = getelementptr [2 x %MyStruct], [2 x %MyStruct]* %array, i32 0, i32 1

  ; Step 3: Create a struct value to pass by value
  %val_struct = alloca %MyStruct, align 8
  %val_struct_ptr = bitcast %MyStruct* %val_struct to i8*
  call void @llvm.memset.p0i8.i64(i8* %val_struct_ptr, i8 0, i64 8, i1 false)
  %val_struct_loaded = load %MyStruct, %MyStruct* %val_struct, align 8

  ; Step 4: Call the callee with the second element pointer and struct by value
  call void @callee(%MyStruct* %second_elem_ptr, %MyStruct %val_struct_loaded), !svf !6

  ; Step 5: Return
  ret void
}

; LLVM memset intrinsic to zero-initialize memory
declare void @llvm.memset.p0i8.i64(i8*, i8, i64, i1)



attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0"}
!6 = !{!"unsafe_ir"}
