#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1="$1"
file2="$2"

# Ensure the input files are sorted and create temporary files if needed
sort "$file1" -o sorted_file1.txt
sort "$file2" -o sorted_file2.txt

# Use the `comm` command to find common names in both files
comm -12 sorted_file1.txt sorted_file2.txt

# Clean up temporary files (if created)
rm -f sorted_file1.txt sorted_file2.txt
