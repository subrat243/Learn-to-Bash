#!/bin/bash

# Set the path of the file to test.
file="./file.txt"

# Check whether the path exists.
if [ -e "$file" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi

# Check whether the path points specifically to a regular file.
if [ -f "$file" ]; then
    echo "Regular file exists."
else
    echo "Not a regular file."
fi