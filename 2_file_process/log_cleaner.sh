#!/bin/bash
# Deletes .log files older than a specified number of days in a given directory

dir="$1"
days="$2"

if [ -z "$dir" ] || [ -z "$days" ]; then
  echo "Usage: $0 <directory> <days>"
  exit 1
fi

echo "Cleaning .log files older than $days days in $dir"
find "$dir" -name "*.log" -type f -mtime +"$days" -print -delete
