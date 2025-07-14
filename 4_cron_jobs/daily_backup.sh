#!/bin/bash
# Creates a tar.gz backup of the provided folder with timestamp

folder="$1"

if [ -z "$folder" ]; then
  echo "Usage: $0 <folder_to_backup>"
  exit 1
fi

timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="${folder%/}_backup_$timestamp.tar.gz"

tar -czf "$backup_file" "$folder"

if [ $? -eq 0 ]; then
  echo "Backup successful: $backup_file"
else
  echo "Backup failed."
fi