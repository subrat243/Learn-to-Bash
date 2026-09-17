#!/bin/bash

# Set the prompt displayed by the select menu.
PS3='Choose one option: '

# Display a numbered menu and store the selected value in word.
select word in "apple" "banana" "cherry" "date"; do
    echo "The word you selected is: $word"

    # Exit after processing the first selection.
    break
done

exit 0