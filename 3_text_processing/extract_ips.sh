#!/bin/bash
# Extracts all unique IP addresses from a log file

file="$1"

if [ -z "$file" ]; then
  echo "Usage: $0 <logfile>"
  exit 1
fi

echo "Extracting IPs from $file..."
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' "$file" | sort | uniq