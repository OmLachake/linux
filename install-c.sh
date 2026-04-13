#!/bin/bash

sudo dnf install -y \
  gcc \
  gcc-c++ \
  gcc-gdb-plugin \
  libgcc \
  libgcc.i686 \
  libasan \
  libasan.i686 \
  libtsan \
  libubsan \
  libubsan.i686 \
  liblsan \
  libatomic \
  libatomic.i686 \
  libgomp \
  libgomp.i686 \
  libstdc++ \
  libstdc++-devel \
  libstdc++-static \
  gcc-plugin-devel \
  cpp

sudo dnf group install "Development Tools" "C Development Tools and Libraries" -y
sudo dnf install gdb valgrind perf strace ltrace cmake ninja-build llvm clang lldb clang-tools-extra  -y

sudo dnf install -y \
  libpcap-devel \
  openssl-devel \
  libuv-devel \
  libcurl-devel \
  c-ares-devel \
  protobuf-devel \
  protobuf-compiler \
  meson \
  ccache \
  cppcheck \
  iwyu \
  systemtap \
  hyperfine \
  doxygen
