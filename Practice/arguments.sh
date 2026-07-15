#!/bin/bash

# $1, $2, $3 are positional parameters representing the first three arguments passed to the script
echo "Using positional parameters: $1 $2 $3"

# Store all command-line arguments into an array named 'args'
args=("$@")
# Access individual elements of the array (note that array indices start at 0)
echo "Using array: ${args[0]} ${args[1]} ${args[2]} ${args[3]}"

# "$@" expands all arguments as separate, quoted strings: "$1" "$2" "$3"
echo "Print all arguments: $@"

# "$*" expands all arguments merged into a single string, separated by the first character of IFS (default is space)
echo "Print all arguments as single string: $*"

# $# stores the total number of arguments passed to the script
echo "Number of arguments passed: $#"

# Iterating over "$@" treats each argument as a separate element/word
for arg in "$@"; do
  echo "Arg: $arg"
done

# Iterating over "$*" treats the entire set of arguments as a single merged word
for arg in "$*"; do
  echo "Arg: $arg"
done