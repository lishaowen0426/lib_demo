#!/usr/bin/env bash
set -e

current_dir=$(pwd)


if [ -z "$1" ]; then
    echo "Error: Missing analysis target. Multiple targets can be separated by comma"
    exit 1
fi

echo "Analysis target: $1"
read -p "Press Enter to confirm and proceed"


if false; then
echo "Setup miri..."
cargo miri setup

echo "Run miri(mir-opt-level=2)..."
MIRIFLAGS="-Zmiri-unsafety-target=$1 -Zmir-opt-level=2" cargo miri run
fi

output_path="$current_dir/miri_unsafety_result.json"

if [ -e "$output_path" ]; then
  echo "Analysis results: $output_path"
else
  echo "The analysis result does not exist. check miri"
  exit 1
fi

echo "Run cargo clean..."
cargo clean

echo "Recompile with the analysis result...."
export RUSTFLAGS="-Zunstable-options -Zmir-opt-level=2 \
                -Zmimalloc=/home/swli/rust-isolation/mimalloc/out/debug/mimalloc-debug.o \
                -Clink-args=-fuse-ld=/home/swli/rust-isolation/mold/build/mold \
                -Zunsafety-analysis-result=$output_path \
                -Zunsafety_svf"
                #-Zunsafety-custom-alloca=/home/swli/rust-isolation/rust/custom_allocator/alloc.o \
                #-Zunsafety-replace-alloca"

#export RUSTC_LOG="rustc_codegen_ssa::back::link=info"

cargo rustc --lib -- --emit=llvm-ir
#cargo run

unset RUSTFLAGS
unset RUSTC_LOG
