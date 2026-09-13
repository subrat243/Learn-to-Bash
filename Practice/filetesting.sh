#!/bin/bash

file="./file.txt"

if [ -e "$file" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi

if [ -f "$file" ]; then
    echo "Regular file exists."
else
    echo "Not a regular file."
fi