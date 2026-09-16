#!/bin/bash

# Define a function that prints a greeting message.
function greet {
    echo "Hello World!"
}

# Call the greeting function.
greet

# Define a function that displays two values passed as arguments.
user_info() {
    echo "Username: $1"
    echo "Role: $2"
}

# Pass a username and role to the user_info function.
user_info "Kaizen" "Penetration Tester"

# Define functions that demonstrate positional parameters and fixed text.
function fun_A {
    echo "$1"
}

function fun_B {
    echo "Function B"
}

function fun_C {
    echo "Function C"
}

function fun_D {
    echo "$1"
}

# Call each example function with or without an argument.
fun_A "Function A"
fun_B
fun_C  
fun_D "Function D"

# Return success when the supplied path points to a regular file.
function check_file {
    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi 
}

# Check whether function.sh exists in the current directory.
check_file "function.sh"

# Use the function's exit status to display the result.
if [ $? -eq 0 ]; then
    echo "File exists."
else
    echo "File does not exist."
fi

# Define a function that returns the machine's hostname.
function get_hostname {
    hostname
}

# Store the hostname returned by get_hostname.
current_host=$(get_hostname)

# Display the current machine's hostname.
echo "Hostname: $current_host"
