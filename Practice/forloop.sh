#!/bin/bash

# Process every item in the home directory.
for item in /home/kaizen/*; do

    # Display the current item before checking its type.
    echo "Processed item: $item"

    # Identify whether the current item is a directory, file, or another type.
    if [ -d "$item" ]; then
        echo "$item is a directory"
    elif [ -f "$item" ]; then
        echo "$item is a file"
    else
        echo "$item is something else"
    fi
done

