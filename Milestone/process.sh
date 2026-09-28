#!/bin/bash

# USER is an environment variable that usually contains the login name.
echo "Hey i am $USER and i will show you the current processes running on your system"

echo "Listing processes:"

# Without options, ps shows a snapshot of processes associated with this terminal.
ps
