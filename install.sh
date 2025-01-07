#!/bin/bash

# Exit on any error
set -e

# Update and install prerequisites
echo "Updating package repositories and installing prerequisites..."
apt-get update -y
apt-get install -y build-essential libssl-dev wget tar

# Define CMake version
CMAKE_VERSION="3.27.0"  # Replace with the desired version

# Download and install CMake
echo "Downloading CMake version $CMAKE_VERSION..."
wget https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION-linux-x86_64.tar.gz

echo "Extracting CMake..."
tar -xvzf cmake-$CMAKE_VERSION-linux-x86_64.tar.gz

echo "Installing CMake..."
mv cmake-$CMAKE_VERSION-linux-x86_64 /opt/cmake
ln -s /opt/cmake/bin/* /usr/local/bin/

# Verify installation
echo "Verifying CMake installation..."
cmake --version

echo "CMake $CMAKE_VERSION installed successfully!"
