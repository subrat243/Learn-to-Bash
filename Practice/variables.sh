#!/bin/bash

# Define and print a simple string variable
intro="This is my first variable."
echo $intro

# Command substitution: dynamically get the hostname and OS name
about="This is your hostname '$(uname -n)' and you are running '$(uname -o)' OS."
echo $about

# Global variable declaration
var="globle variable"

# Define a function to demonstrate local vs global scope
function func {
    # 'local' keyword restricts the variable's scope to this function only
    local var="local variable"
    echo "inside function: $var"
}

# Print global variable, execute function, and verify global variable remains unchanged
echo "before function: $var"
func
echo "after function: $var"

# Define a normal variable
greeting="Hello World"

# Export the variable so that child processes (like the Python script below) can access it as an environment variable
export greeting 

# Access the exported environment variable inside a Python child process
python3 -c 'import os; print(os.getenv("greeting"))'

