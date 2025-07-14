#!/bin/bash
# Uploads a local folder to an AWS S3 bucket using AWS CLI

source_dir="$1"
bucket="$2"

if [ -z "$source_dir" ] || [ -z "$bucket" ]; then
  echo "Usage: $0 <local_folder> <s3_bucket_name>"
  exit 1
fi

if [ ! -d "$source_dir" ]; then
  echo "❌ Error: Directory '$source_dir' does not exist."
  exit 1
fi

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
log_file="s3_backup_$timestamp.log"

echo "🚀 Starting S3 backup..."
aws s3 sync "$source_dir" "s3://$bucket/" --delete > "$log_file" 2>&1

if [ $? -eq 0 ]; then
  echo "✅ Backup completed. Log saved to $log_file"
else
  echo "❌ Backup failed. Check log: $log_file"
fi
