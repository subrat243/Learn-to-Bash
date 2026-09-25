#!/bin/bash

# Keep standard output and standard error in separate files.
output_file="stdout.txt"
error_file="stderr.txt"

# The > operator sends standard output (file descriptor 1) to a file.
printf 'This message is standard output.\n' > "$output_file"

# The >> operator appends standard output without replacing existing content.
printf 'This message is appended to standard output.\n' >> "$output_file"

# The 2> operator sends standard error (file descriptor 2) to another file.
ls missing-file 2> "$error_file"

# Read both files so the two streams can be compared in the terminal.
printf 'Standard output:\n'
cat "$output_file"
printf 'Standard error:\n'
cat "$error_file"

# Remove the temporary files created for this demonstration.
rm -f "$output_file" "$error_file"