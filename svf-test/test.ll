; ModuleID = 'example.ll'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"





; Declare the memset intrinsic
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i1)

define void @memory_ops() {
entry:


  %struct_ptr = alloca { i32, i32* }, align 8
  
  ; Get a pointer to the second element of the struct (a pointer to i32)
  %gep = getelementptr { i32, i32* }, { i32, i32* }* %struct_ptr, i32 0, i32 1

  %int_ptr = alloca i32, align 4
  %int_val = alloca ptr, align 4
  store i32* %int_ptr, i32** %gep, align 8
  store ptr %int_ptr, ptr %int_val, align 4


; Step 1: Create a struct with an i32 and a pointer to i32
  %struct = alloca { i32, i32* }, align 8

  ; Step 2: Initialize the struct
  %int = alloca i32, align 4
  store i32 0, i32* %int, align 4          ; Initialize the pointer with 0
  %struct_val = insertvalue { i32, i32* } undef, i32 42, 0 ; Insert 42 at index 0
  %struct_val1 = insertvalue { i32, i32* } %struct_val, i32* %int, 1 ; Insert pointer

  store { i32, i32* } %struct_val1, { i32, i32* }* %struct, align 8 ; Store struct

  ; Step 3: Extract the pointer to i32 (2nd element of the struct)
  %loaded_struct = load { i32, i32* }, { i32, i32* }* %struct, align 8
  %extracted_ptr = extractvalue { i32, i32* } %loaded_struct, 1

  ; Step 4: Store a constant 4 into the extracted pointer
  store i32 4, i32* %extracted_ptr, align 4 , !svf !6

  
  ; Return
  ret void
}


attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0"}

!6 = !{!"unsafe_ir"}