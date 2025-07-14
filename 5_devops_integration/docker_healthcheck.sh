#!/bin/bash
# Checks if a Docker container is running and restarts it if it's stopped

container="$1"

if [ -z "$container" ]; then
  echo "Usage: $0 <container_name_or_id>"
  exit 1
fi

status=$(docker inspect -f '{{.State.Running}}' "$container" 2>/dev/null)

if [ "$status" == "true" ]; then
  echo "✅ Container '$container' is running."
else
  echo "⚠️  Container '$container' is not running. Attempting restart..."
  docker start "$container"
  if [ $? -eq 0 ]; then
    echo "✅ Successfully restarted container '$container'."
  else
    echo "❌ Failed to restart container '$container'. Check Docker logs."
  fi
fi
