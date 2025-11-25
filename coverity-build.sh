#!/bin/bash
set -e

# Ensure build directory exists
mkdir -p build

# Configure if not already configured
if [ ! -f build/Makefile ]; then
  (cd build && ../configure)
fi

# Build with distcheck
make -C build distcheck -j$(nproc) 

