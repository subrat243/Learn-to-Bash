#!/bin/bash

# Arithmetic expansion evaluates integer expressions inside $((...)).
# Variable names can be used directly without a leading "$".
a=9
b=6

echo "Addition: $((5 + 5))"

echo "Subtraction: $((a - b))"

echo "Multiplication: $((8 * 5))"

# Bash division discards any fractional part.
echo "Division: $((a / b))"

# Modulus returns the remainder after division.
echo "Modulus: $((a % b))"

echo "Power: $((2 ** 8))"