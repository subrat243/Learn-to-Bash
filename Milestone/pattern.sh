#!/bin/bash

# Store the size entered by the user.
num=0

# Ask for a size in the supported range.
echo -n "Enter a number between 5 and 9: "
read num

# Stop if the value is outside the supported range.
if ! [ $num -ge 5 -a $num -le 9 ]; then
    echo "WTF... I ask to enter number between 5 and 9, Try Again"
    exit 1
fi

# Draw the upper half of the diamond, including its widest row.
for (( i = 1; i <= num; i++ )); do
    # Indent each row less as it gets wider.
    for (( s = num; s >= i; s-- )); do
        echo -n " "
    done

    for (( j = 1; j <= i; j++ )); do
        echo -n "* "
    done
    echo ""
done

for (( i = num - 1; i >= 1; i-- )); do
    for (( s = i; s <= num; s++ )); do
        echo -n " "
    done

    for (( j = 1; j <= i; j++ )); do
        echo -n "* "
    done
    echo ""
done