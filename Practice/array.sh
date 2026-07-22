#!/bin/bash

# Define an indexed array of Linux distributions
array=('redhat' 'ubuntu' 'debian' 'Arch' 'Fedora')

# Get the total number of elements in the array
elements=${#array[@]}

# Iterate through array elements by index and print each element
for ((i=0; i<$elements; i++)); do
    # for ((i=0; i<${#array[@]}; i++)); do
    echo "${array[${i}]}"
done

# Declare an indexed array to hold data read from the input file
declare -a arr 

# Save current standard input (FD 0) into custom file descriptor 10
exec 10<&0

# Redirect standard input (FD 0) to read from the input file passed as $1
exec < "$1"

let count=0

# Read file line by line and assign each line to the array
while read -r LINE; do
    arr[$count]=$LINE
    ((count++))
done

# Output the total element count and all elements stored in the array
echo "Number of elements: ${#arr[@]}"
echo "${arr[@]}"

# Restore standard input (FD 0) from FD 10 and close file descriptor 10
exec 0<&10 10<&-


