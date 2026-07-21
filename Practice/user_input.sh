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

# Read multiple inputs in a single line into separate variables ('city' and 'country')
read -p "Enter your city and country:" city country
echo "You live in $city, $country."

echo -e "How are you doing?"
# 'read' without specifying a variable name automatically stores the user's input in the default '$REPLY' variable
read
echo "You are doing $REPLY, That's great to hear."

echo -e "What is your fav colours? "
# 'read -a' reads space-separated input values directly into an array named 'colours'
read -a colours
# Access and print individual array elements using zero-based index syntax (${colours[0]}, ${colours[1]}, etc.)
echo "Your most favourite colours are ${colours[0]}, ${colours[1]} and ${colours[2]}"

