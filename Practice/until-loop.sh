#!/bin/bash

C1=0
until [ "$C1" -gt 10 ]; do
    echo "Value of Counter: $C1"
    ((C1++))
done