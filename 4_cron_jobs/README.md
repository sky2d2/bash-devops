# 4_cron_jobs

This module introduces the basics of using `cron` to schedule Bash scripts for recurring system tasks.

---

## Scripts

### 🔹 `daily_backup.sh`
Creates a compressed archive of a specified directory with a timestamp.

### 🔹 `system_report.sh`
Generates a daily system report (uptime, CPU, memory, disk usage) and appends it to a log file.

---

## Usage

```bash
chmod +x *.sh
./daily_backup.sh ~/projects
./system_report.sh
