#!/bin/bash
# Syncs a local folder to an S3 bucket and logs the backup

src_dir="$1"
bucket="$2"

if [ -z "$src_dir" ] || [ -z "$bucket" ]; then
  echo "Usage: $0 <source_directory> <s3_bucket_name>"
  exit 1
fi

timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
log="s3_backup_${timestamp}.log"

echo "Syncing $src_dir to s3://$bucket..." | tee "$log"
aws s3 sync "$src_dir" "s3://$bucket" >> "$log" 2>&1

if [ $? -eq 0 ]; then
  echo "Backup completed. Log saved to $log"
else
  echo "Backup failed. See $log for details"
fi
