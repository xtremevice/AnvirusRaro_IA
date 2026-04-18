#!/bin/bash

# build.sh - A script to automate the build process for Linux and macOS.

# Check for necessary dependencies
dependencies=(
    "cmake"
    "make"
)

for dep in "${dependencies[@]}"; do
    if ! command -v $dep &> /dev/null; then
        echo "Error: $dep is not installed. Please install it to proceed."
        exit 1
    fi
done

# Create a build directory if it doesn't exist
mkdir -p build
cd build

# Run CMake configuration
cmake ..

# Compile the project
make

# Usage Instructions
echo "Build completed! To run your program, navigate to the build directory and execute the application."