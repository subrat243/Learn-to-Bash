#!/bin/bash

# The 'trap' command catches signals (like Ctrl+C or script exit) and runs custom code

# Function to clean up temporary files when the script exits
cleanup() {
    echo -e "\nRemoving temporary file..."
    rm -f "$temp_file"
    echo "Cleanup finished!"
}

# Function that runs when Ctrl+C (INT signal) is pressed
handle_ctrl_c() {
    echo -e "\nYou pressed Ctrl+C! But trap caught it."
}

# Function that runs when any command in the script fails
handle_error() {
    echo "An error occurred on line $1!"
}

# Create a temporary file to demonstrate cleanup
temp_file="/tmp/trap_demo_$$.txt"
echo "Temporary data" > "$temp_file"
echo "Created temp file: $temp_file"

# Run 'cleanup' function automatically whenever the script exits
trap cleanup EXIT

# Run 'handle_ctrl_c' when the user presses Ctrl+C (INT signal)
trap handle_ctrl_c INT

# Run 'handle_error' with the line number ($LINENO) whenever a command fails
trap 'handle_error $LINENO' ERR

echo -e "\n--- Step 1: Testing Ctrl+C Trap ---"
echo "Press Ctrl+C now if you want to test..."
sleep 2

echo -e "\n--- Step 2: Testing Error Trap ---"
echo "Running a command that fails..."
ls /non_existent_folder_123 2>/dev/null

echo -e "\n--- Step 3: Ignoring Ctrl+C ---"
# Using empty quotes '' ignores Ctrl+C completely
trap '' INT
echo "Ctrl+C is now ignored for 2 seconds..."
sleep 2

echo -e "\n--- Step 4: Resetting Ctrl+C to Default ---"
# Using '-' resets Ctrl+C back to default behavior
trap - INT
echo "Ctrl+C restored to default."

echo -e "\nScript finished! (The EXIT trap will now run automatically)"
