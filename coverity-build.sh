#!/bin/bash
set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Ensure build directory exists
mkdir -p build

# Configure if not already configured
if [ ! -f build/Makefile ]; then
  (cd build && ../configure)
fi

# Build with distcheck
make -C build distcheck -j$(nproc) 

