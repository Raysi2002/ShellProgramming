#!/bin/bash

# Check if at least one filename is provided as an argument
if [ $# -lt 1 ]; then
  echo "Usage: $0 <file1> [file2 file3 ...]"
  exit 1
fi

# Loop through all provided filenames
for filename in "$@"; do
  if [ ! -f "$filename" ]; then
    echo "File '$filename' doesn't exist"
  else
    echo "Enter word to delete in '$filename'"
    read word
    echo "File before deleting '$word' in '$filename':"
    cat "$filename"
    
    # Use grep to remove lines containing the word
    grep -v -i "$word" "$filename" > temp
    mv temp "$filename"
    echo "File after deleting '$word' in '$filename':"
    cat "$filename"
  fi
done
