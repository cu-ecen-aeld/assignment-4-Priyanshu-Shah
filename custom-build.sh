#!/bin/bash
set -e

# Add our wrappers to the PATH
export PATH=~/bin:$PATH
export CC=gcc-buildroot
export CXX=g++-buildroot

# Clean the output directory if it exists
if [ -d buildroot/output ]; then
  echo "Cleaning previous build..."
  make -C buildroot clean
fi

# Configure Buildroot
cd buildroot
make BR2_EXTERNAL=../base_external qemu_aarch64_virt_defconfig

# Build with more verbose output
make V=1
cd ..
