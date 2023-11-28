#!/bin/bash

echo "Files with read, write, and execute permissions for the user in the current directory:"

# Use the find command to search for files with the specified permissions
find . -maxdepth 1 -type f -perm -700 -exec basename {} \;
