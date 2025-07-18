#!/bin/bash
# Checks if a Docker container is running and restarts it if not

container="$1"

if [ -z "$container" ]; then
  echo "Usage: $0 <container_name>"
  exit 1
fi

echo "Checking status of container: $container"

if ! docker ps | grep -q "$container"; then
  echo "Container '$container' is not running. Attempting restart..."
  docker start "$container"
  
  if [ $? -eq 0 ]; then
    echo "Container '$container' restarted successfully."
  else
    echo "Failed to restart container '$container'. Check Docker logs."
  fi
else
  echo "Container '$container' is healthy and running."
fi
