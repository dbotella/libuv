#!/bin/bash
set -e

# Clean build directory if it exists
if [ -d build ]; then
  make -C build clean || true
fi

