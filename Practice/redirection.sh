#!/bin/bash

# Keep standard output and standard error in separate files.
output_file="stdout.txt"
error_file="stderr.txt"

printf 'This message is standard output.\n' > "$output_file"
ls missing-file 2> "$error_file"

printf 'Standard output:\n'
cat "$output_file"
printf 'Standard error:\n'
cat "$error_file"

rm -f "$output_file" "$error_file"