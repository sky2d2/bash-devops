# 🛠️ DevOps Bash Projects

This module contains end-to-end Bash-based mini-projects that demonstrate real-world DevOps use cases. Each script integrates system administration with automation tools like AWS CLI, Docker, and cron jobs.

---

## 📁 Projects Overview

| Project Name              | Description                                                                 | Technologies Used                 |
|---------------------------|-----------------------------------------------------------------------------|-----------------------------------|
| `daily_log_cleanup.sh`    | Cleans up `.log` files older than a given number of days in a directory     | `bash`, `find`, `cron`            |
| `s3_sync_pipeline.sh`     | Syncs a local folder to an S3 bucket with versioned backups                 | `bash`, `aws cli`, `s3`           |
| `docker_autoheal.sh`      | Monitors a container's health and auto-restarts it if not running          | `bash`, `docker`                  |
| `ec2_snapshot.sh`         | Creates an EBS snapshot of a given EC2 instance’s root volume               | `bash`, `aws cli`, `ec2`          |
| `system_health_report.sh` | Collects uptime, memory, CPU, and disk stats and appends to a report file  | `bash`, `cron`, `uptime`, `df`    |

---

## 🧩 1. `daily_log_cleanup.sh`

Deletes `.log` files older than a certain number of days.

```bash
./daily_log_cleanup.sh /var/log 7
