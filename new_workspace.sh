#!/bin/bash

# Check if a directory name is provided
if [ -z "$1" ]; then
    echo "Please provide a directory name."
    exit 1
fi

# Set the directory name from the command line argument
directoryName="$1"

# Create the main directory
mkdir "$directoryName"

# Check if the main directory was created successfully
if [ -d "$directoryName" ]; then
    # Create a subdirectory named "final"
    finalPath="$directoryName/final"
    mkdir "$finalPath"
    
    # Create a subdirectory named "original"
    originalPath="$directoryName/original"
    mkdir "$originalPath"

    # Create a subdirectory named "working"
    workingPath="$directoryName/working"
    mkdir "$workingPath"
    
    echo "Directories created successfully. Main directory: $directoryName, Subdirectory: $finalPath, $originalPath, $workingPath"
else
    echo "Failed to create the directory."
fi
