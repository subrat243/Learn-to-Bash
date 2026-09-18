#!/bin/bash

echo "Choose a programming language"

echo "1. Python"
echo "2. JavaScript"
echo "3. Java"
echo "4. C++"

read -p "Choose your programming language (1-4): " choice

case $choice in
    1)
        echo "You chose Python"
        ;;
    2)
        echo "You chose JavaScript"
        ;;
    3)
        echo "You chose Java"
        ;;
    4)
        echo "You chose C++"
        ;;
    *)
        echo "Invalid"
        ;;
    esac

read -p "Choose a letter A or B: " letter

case $letter in
    a|A)
        echo "You chose A"
        ;;
    b|B)
        echo "You chose B"
        ;;
    *)
        echo "Unknown"
        ;;
esac