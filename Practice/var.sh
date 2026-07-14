#!/bin/bash

# --- Basic Variable Assignment & Usage ---
# Assign a string to the 'intro' variable and print it
intro="This is my first variable."
echo $intro

# --- Command Substitution in Variables ---
# Use $(command) to execute a command and embed its output inside a double-quoted string.
# 'uname -n' returns the hostname, 'uname -o' returns the OS name.
about="This is your hostname '$(uname -n)' and you are running '$(uname -o)' OS."
echo $about

# --- Variable Scope (Global vs. Local) ---
# Declare a global variable 'var'
var="globle variable"

# Define a function 'func'
function func {
    # Using 'local' limits the variable scope to this function only
    local var="local variable"
    echo "inside function: $var"
}

# Print the global variable before running the function
echo "before function: $var"

# Execute the function (prints the local variable)
func

# Print the global variable after the function runs (remains unchanged)
echo "after function: $var"

# --- Exporting Variables to Sub-processes ---
# Define a variable 'greeting'
greeting="Hello World"
# Export 'greeting' to make it an environment variable available to child processes
export greeting 

# Access the exported environment variable inside a Python child process
python3 -c 'import os; print(os.getenv("greeting"))'

