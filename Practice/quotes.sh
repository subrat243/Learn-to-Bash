#!/bin/bash

VAR="Bash Scripting is fun!"

# Unquoted expansion evaluates the variable.
echo $VAR

# Escape the dollar sign to print the variable name literally.
echo \$VAR

# Double quotes preserve spaces while allowing escapes and expansion.
echo "\$"
echo "\""
echo "\\"
echo "\*"
echo "\?"

# Single quotes print their contents literally.
echo '$VAR'

echo '*.txt'
echo 'Hello $USER'
echo 'Hello `date`'

# Double quotes allow expansion alongside literal apostrophes.
echo "it's a beautiful day"

echo "The $VAR"
echo "The variable is \"$VAR\""
echo "Current date: `date`"

# ANSI-C quoting interprets escape sequences such as newline and tab.
echo $'Hello\nWorld'

echo $'Name:\tSubrat\nRole:\tCybersecurity'