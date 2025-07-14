#!/bin/bash
# Converts a log file to CSV format: IP, Date, Method, Path

file="$1"

if [ -z "$file" ]; then
  echo "Usage: $0 <logfile>"
  exit 1
fi

echo "IP,Date,Method,Path"

awk '{
  ip = $1
  date = gensub("\\[([^]]+)]", "\\1", "g", $4)
  method = gensub("\"([A-Z]+).*", "\\1", "g", $6)
  path = $7
  print ip "," date "," method "," path
}' "$file"

if [ $? -eq 0 ]; then
  echo "✅ Successfully parsed $file. You can redirect output using:"
  echo "   $0 $file > output.csv"
else
  echo "❌ Error: CSV conversion failed."
fi
