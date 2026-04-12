#!/bin/bash

sudo dnf group install "Development Tools" "C Development Tools and Libraries"
sudo dnf install gdb valgrind perf strace ltrace cmake ninja-build llvm clang lldb clang-tools-extra  

