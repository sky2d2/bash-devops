#!/bin/bash
# Checks disk usage on the root (/) partition and warns if usage is above 80%

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "📊 Disk usage: $usage%"

if [ "$usage" -gt 80 ]; then
  echo "WARNING: Disk usage is above 80%!"
else
  echo "Disk usage is under control."
fi
