#!/bin/bash
# Replaces a key’s value in a .env or config-style file using sed

file="$1"
key="$2"
value="$3"

if [ -z "$file" ] || [ -z "$key" ] || [ -z "$value" ]; then
  echo "Usage: $0 <file> <key> <new_value>"
  exit 1
fi

echo "🛠️ Replacing $key in $file with $value"
sed -i "s/^$key=.*/$key=$value/" "$file"

if [ $? -eq 0 ]; then
  echo "✅ Successfully updated $key in $file"
else
  echo "❌ Failed to update $key in $file"
fi

echo "Current content of $file:"
cat "$file"
echo "🔍 Check the file to confirm the change."
