#!/bin/bash
# Asks the user which environment they're in and prints an appropriate message

read -p "Enter the environment (dev/stage/prod): " env

if [ "$env" = "prod" ]; then
  echo "You are in the PRODUCTION environment. Be cautious!"
elif [ "$env" = "stage" ]; then
  echo "Staging mode. Limited testing environment."
elif [ "$env" = "dev" ]; then
  echo "Developer mode active. Safe to test!"
else
  echo "Unknown environment: $env"
fi
