#!/bin/bash
# Creates a snapshot of the root volume of a given EC2 instance

instance_id="$1"

if [ -z "$instance_id" ]; then
  echo "Usage: $0 <instance_id>"
  exit 1
fi

echo "Fetching root volume for instance: $instance_id..."
volume_id=$(aws ec2 describe-instances \
  --instance-ids "$instance_id" \
  --query "Reservations[0].Instances[0].BlockDeviceMappings[0].Ebs.VolumeId" \
  --output text)

if [ "$volume_id" == "None" ] || [ -z "$volume_id" ]; then
  echo "Failed to find volume for instance $instance_id"
  exit 1
fi

echo "Creating snapshot of volume $volume_id..."
snapshot_output=$(aws ec2 create-snapshot \
  --volume-id "$volume_id" \
  --description "Snapshot of $instance_id on $(date '+%Y-%m-%d %H:%M:%S')" \
  --tag-specifications "ResourceType=snapshot,Tags=[{Key=Name,Value=Backup-$instance_id-$(date '+%Y%m%d%H%M%S')}]")

if [ $? -eq 0 ]; then
  echo "Snapshot created successfully."
  echo "$snapshot_output"
else
  echo "Failed to create snapshot. Check AWS CLI logs for details."
  exit 1
fi
