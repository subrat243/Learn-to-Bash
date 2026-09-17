#!/bin/bash

PS3='Choose one option: '

select word in "apple" "banana" "cherry" "date"; do
    echo "The word you selected is: $word"

    break
done

exit 0