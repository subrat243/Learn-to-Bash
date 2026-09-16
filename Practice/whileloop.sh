#!/bin/bash

# Initialize counters for the two numeric while-loop examples.
C1=0
C2=10

# Count upward while C1 is less than 10.
while [ "$C1" -lt 10 ]; do
    echo "Value of Counter: $C1"
    ((C1++))
done

# Separate the two numeric loop examples in the output.
echo "-----------------------------"

# Count downward while C2 is greater than 0.
while [ "$C2" -gt 0 ]; do
    echo "Value of Counter: $C2"
    ((C2--))
done

# Keep reading commands until the user enters 'exit'.
while true; do
    read -rp "Enter a Command (or 'exit' to quit): " cmd

    # Stop the loop when the exit command is entered.
    if [[ "$cmd" == "exit" ]]; then
        echo "Exiting the loop."
        break
    else
        # Display and execute the command entered by the user.
        echo "You entered: $cmd"
        echo $($cmd)
    fi
done