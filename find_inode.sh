#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path="$1"

if [ -e "$file_path" ]; then
    inode_number=$(ls -i "$file_path" | awk '{print $1}')
    echo "Inode number of $file_path is $inode_number"
else
    echo "$file_path does not exist."
fi
