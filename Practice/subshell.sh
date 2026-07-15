#!/bin/bash

# Command substitution $(command) runs the command inside a subshell and returns its standard output
echo "Executing uname -o in subshell: $(uname -o)"

# Without $(...), the command is treated as a plain string literal
echo "Executing uname -o without subshell: uname -o"

# Capturing the stdout of command substitutions into variables
os=$(uname -o)
hostname=$(uname -n)

# Referencing the captured variable values
echo "The OS is $os and hostname is $hostname"

# Command substitutions can be nested inside one another
echo $(echo $(uname -o))