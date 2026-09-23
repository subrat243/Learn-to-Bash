#!/bin/bash

# Bash `let` command performs arithmetic evaluation.
# Example 1: using fixed values.
let result=8+2
echo "The result of 8 + 2 is: $result"

# Example 2: using command-line arguments.
let result=$1+$2
echo "The result of $1 + $2 is: $result"