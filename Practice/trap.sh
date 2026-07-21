#!/bin/bash

# ==============================================================================
# Bash trap Command Practice Script
# ==============================================================================
# The 'trap' command allows a script to capture/intercept signals (like Ctrl+C,
# script termination, or exit events) and execute custom commands or functions.
# Common signals:
#   - INT  (SIGINT)  : Sent when user presses Ctrl + C.
#   - TERM (SIGTERM) : Sent when the process is terminated (default kill signal).
#   - EXIT           : Triggered when the script finishes execution or exits.
#   - ERR            : Triggered when a command in the script returns a non-zero status.
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. Cleanup on EXIT signal
# ------------------------------------------------------------------------------
# Create a temporary file to demonstrate automatic file cleanup
temp_file="/tmp/trap_demo_$$.txt"
echo "Temporary data" > "$temp_file"
echo "Created temporary file: $temp_file"

# Define a function to perform cleanup tasks
cleanup() {
    echo -e "\n[CLEANUP] Script is exiting. Removing temporary file '$temp_file'..."
    rm -f "$temp_file"
    echo "[CLEANUP] Cleanup completed."
}

# 'trap <command/function> EXIT' ensures cleanup runs when script finishes or exits
trap cleanup EXIT


# ------------------------------------------------------------------------------
# 2. Intercepting Ctrl+C (INT signal)
# ------------------------------------------------------------------------------
# Function executed when user presses Ctrl+C
handle_sigint() {
    echo -e "\n[TRAP] Caught INT signal (Ctrl + C)! Custom handler executed."
}

# 'trap <function> INT' catches the SIGINT signal (Ctrl+C)
trap handle_sigint INT


# ------------------------------------------------------------------------------
# 3. Intercepting Errors (ERR signal)
# ------------------------------------------------------------------------------
# Function executed when any command fails with a non-zero exit status
handle_error() {
    echo "[TRAP] Error caught! Command failed on line $1."
}

# 'trap <command> ERR' catches command failures; $LINENO passes line number
trap 'handle_error $LINENO' ERR


# ------------------------------------------------------------------------------
# Demonstration / Execution Flow
# ------------------------------------------------------------------------------
echo -e "\n--- Part 1: Signal Trapping Demonstration ---"
echo "Script is running... Press Ctrl+C during sleep to trigger the INT trap."
sleep 2

echo -e "\n--- Part 2: Error Trapping Demonstration ---"
echo "Triggering an intentional command error (accessing non-existent file)..."
ls /path/to/non_existent_file_xyz 2>/dev/null

echo -e "\n--- Part 3: Ignoring Signals and Resetting Defaults ---"
# Passing empty string '' to trap ignores the signal completely
echo "Ignoring Ctrl+C (INT signal) for 2 seconds..."
trap '' INT
sleep 2

# Passing '-' to trap restores default system behavior for the signal
echo "Restoring default behavior for Ctrl+C (INT signal)..."
trap - INT

echo -e "\nScript execution completed!"
# The EXIT trap ('cleanup' function) will run automatically below as the script finishes.
