#!/bin/bash

# Define the directory path
dir="./Demo"

# Check whether the directory exists
if [ -d $dir ]; then
    echo "The directory exists."
else
    echo "The directory does not exist."
fi

# Set the initial choice to 4
# This value keeps the while loop running until a valid choice is entered
choice=4

# Display the language menu
echo "1. Bash"
echo "2. Python"
echo "3. Java"
echo -n "Enter your choice of Language (1-3): "

# Continue the loop while choice is equal to 4
while [ $choice -eq 4 ]; do

    # Read the user's choice
    read choice

    # Check if the user selected Bash
    if [ $choice -eq 1 ]; then
        echo "You have selected Bash."

    else
        # Check if the user selected Python
        if [ $choice -eq 2 ]; then
            echo "You have selected Python."

        else
            # Check if the user selected Java
            if [ $choice -eq 3 ]; then
                echo "You have selected Java."

            else
                # Handle an invalid choice
                echo "Please make a choice between 1-3 !"
                echo "1. Bash"
                echo "2. Python"
                echo "3. Java"
                echo -n "Enter your choice of Language (1-3): "

                # Reset choice to 4 so the loop continues
                choice=4
            fi
        fi
    fi

# End of the while loop
done