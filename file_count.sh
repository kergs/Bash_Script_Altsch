#!/bin/bash

# Check if directory path was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <absolute_directory_path>"
  exit 1
fi

# Check if the given path is a directory
if [ ! -d "$1" ]; then
  echo "Directory '$1' does not exist."
  exit 1
fi

# Count only files (not directories)
file_count=$(find "$1" -type f | wc -l)

echo "There are $file_count files in the directory '$1'."