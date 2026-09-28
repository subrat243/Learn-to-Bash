#!/bin/bash

echo "Hey there! what's your name?"

# read assigns the next input line to a.
read a

echo "Nice to meet you $a, could you tell us your last name?"

# A separate read captures the last name in b.
read b

# Double quotes preserve spaces while expanding both entered names.
echo "Thank you $a $b for us your name..."
