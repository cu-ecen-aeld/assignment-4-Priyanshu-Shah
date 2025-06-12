#!/bin/bash
set -e

# Wait for the directory to be created during build
while [ ! -d "buildroot/output/build/host-hiredis-1.2.0" ]; do
  sleep 1
done

echo "Directory found, patching CMakeLists.txt..."
sed -i 's/cmake_minimum_required(VERSION 2.8.9)/cmake_minimum_required(VERSION 3.5)/' buildroot/output/build/host-hiredis-1.2.0/CMakeLists.txt
echo "Patching complete"
