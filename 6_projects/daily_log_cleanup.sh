#!/bin/bash
# Deletes .log files older than a specified number of days from a directory

target_dir="$1"
days="${2:-7}"  # default: 7 days

if [ -z "$target_dir" ]; then
  echo "Usage: $0 <directory> [days_old]"
  exit 1
fi

logfile="log_cleanup_$(date '+%Y-%m-%d_%H-%M-%S').log"

echo "Cleaning logs older than $days days in $target_dir" | tee "$logfile"
find "$target_dir" -name "*.log" -type f -mtime +$days -print -delete >> "$logfile" 2>&1

echo "Cleanup complete. Summary written to $logfile"
