[build]
rustflags=["-Zunstable-options","-Zlinker-verbose","-Csave-temps","-Clinker-plugin-lto=no","-Clink-arg=-Wl,--verbose"]


[env]
TMPDIR = "/home/swli/rust-isolation/lib_demo/tmp"
