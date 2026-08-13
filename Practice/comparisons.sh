#!/bin/bash

# Declare two integer variables
num1=50
num2=10

# Declare two string variables
s1="Bash"
s2="Shell"

# Uncomment these lines to take numbers as input from the user
# read -p "Enter the first number: " num1
# read -p "Enter the second number: " num2

echo "------------------------------"

# Compare two numbers using -eq (equal to)
echo "This is for the first comparison -eq (equal to):"
if [ $num1 -eq $num2 ]; then
    echo "The numbers are equal."
else
    echo "The numbers are not equal."
fi

echo "------------------------------"

# Compare two numbers using -ne (not equal to)
echo "This is for the second comparison -ne (not equal to):"
if [ $num1 -ne $num2 ]; then
    echo "The numbers are not equal."
else
    echo "The numbers are equal."
fi

echo "------------------------------"

# Compare two numbers using -gt (greater than)
# First check if both numbers are equal, then check which is greater
echo "This is for the third comparison -gt (greater than):"
if [ $num1 -eq $num2 ]; then
    echo "The numbers are equal."
elif [ $num1 -gt $num2 ]; then
    echo "The first number is greater than the second number."
else
    echo "The second number is greater than the first number."
fi

echo "------------------------------"

# Compare two numbers using -lt (less than)
# Also check whether the first number is greater than the second
echo "This is for the fourth comparison -lt (less than):"
if [ $num1 -lt $num2 ]; then
    echo "The first number is less than the second number."
elif [ $num1 -gt $num2 ]; then
    echo "The first number is greater than the second number."
else
    echo "The numbers are equal."
fi

echo "------------------------------"

# Compare two numbers using -ge (greater than or equal to)
echo "This is for the fifth comparison -ge (greater than or equal to):"
if [ $num1 -ge $num2 ]; then
    echo "The first number is greater than or equal to the second number."
else
    echo "The first number is less than the second number."
fi

echo "------------------------------"

# Compare two numbers using -le (less than or equal to)
echo "This is for the sixth comparison -le (less than or equal to):"
if [ $num1 -le $num2 ]; then
    echo "The first number is less than or equal to the second number."
else
    echo "The first number is greater than the second number."
fi

echo "------------------------------"

# Compare two strings using -n and =
# -n checks that s1 is not empty
# = checks whether both strings have the same value
echo "This is for the seventh comparison = (strings are equal):"
if [ -n "$s1" ] && [ "$s1" = "$s2" ]; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi