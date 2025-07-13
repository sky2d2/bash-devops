#!/bin/bash
# Demonstrates using `trap` to safely clean up when script is interrupted (e.g., CTRL+C)

# Create a temporary file
temp_file=$(mktemp)

# Set up a trap for SIGINT (Ctrl+C)
trap "echo 'Caught interrupt signal. Cleaning up...'; rm -f $temp_file; echo 'Temp file removed.'; exit" SIGINT

# Simulate a long-running task
echo "Temp file created at: $temp_file"
echo "Sleeping for 60 seconds. Press CTRL+C to stop and trigger cleanup..."
sleep 60

# Normal end
rm -f "$temp_file"
echo "Script finished. Temp file deleted."
