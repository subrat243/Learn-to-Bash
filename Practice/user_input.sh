#!/bin/bash

# 'echo -e' enables interpretation of backslash escape characters (like \n, \t, etc.)
echo -e "Getting you started...."

# 'read -p' displays a prompt message and reads the user's input directly into the variable 'name'
read -p "Enter your name: " name

# 'read -s' reads input silently (characters typed are not shown on the terminal), which is ideal for passwords
# 'read -s -p' combines silent reading with a prompt
read -s -p "Enter your password: " password

# Print a newline since 'read -s' does not print a newline after the user presses Enter
echo ""

# Print a message greeting the user with their name
echo "Hello $name"

# Confirm password has been received without displaying the actual password
echo "Password received"

