#!/bin/bash

C1=0
C2=10

while [ "$C1" -lt 10 ]; do
    echo "Value of Counter: $C1"
    ((C1++))
done

echo "-----------------------------"

while [ "$C2" -gt 0 ]; do
    echo "Value of Counter: $C2"
    ((C2--))
done

while true; do
    read -rp "Enter a Command (or 'exit' to quit): " cmd

    if [[ "$cmd" == "exit" ]]; then
        echo "Exiting the loop."
        break
    else
        echo "You entered: $cmd"
        echo $($cmd)
    fi
done