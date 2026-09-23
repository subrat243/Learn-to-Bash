#!/bin/bash

# `declare -i` makes the variable an integer.
# Example 1: using a fixed calculation.
declare -i result

result=10+20
echo "The result of 10 + 20 is: $result"

# Example 2: using command-line arguments.
declare -i result

result=$1+$2
echo "The result of $1 + $2 is: $result"