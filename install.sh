#!/bin/bash

# Exit on any error
set -e

# Use a precompiled CMake binary
CMAKE_VERSION="3.27.0"  # Replace with your desired version

echo "Downloading CMake version $CMAKE_VERSION..."


echo "Extracting CMake..."
tar -xvzf cmake-$CMAKE_VERSION-linux-x86_64.tar.gz

echo "Installing CMake..."
mv cmake-$CMAKE_VERSION-linux-x86_64 /opt/cmake
ln -s /opt/cmake/bin/* /usr/local/bin/

# Verify installation
echo "Verifying CMake installation..."
cmake --version

echo "CMake $CMAKE_VERSION installed successfully!"
