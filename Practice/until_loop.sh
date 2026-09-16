#!/bin/bash

# Initialize the counter used by the until loop.
C1=0

# Repeat the loop until C1 becomes greater than 10.
until [ "$C1" -gt 10 ]; do
    echo "Value of Counter: $C1"
    # Increase the counter so the loop eventually reaches its condition.
    ((C1++))
done