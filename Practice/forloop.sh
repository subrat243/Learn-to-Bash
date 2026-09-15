#!/bin/bash

for item in /home/kaizen/*; do

    echo "Processed item: $item"

    if [ -d "$item" ]; then
        echo "$item is a directory"
    elif [ -f "$item" ]; then
        echo "$item is a file"
    else
        echo "$item is something else"
    fi
done

