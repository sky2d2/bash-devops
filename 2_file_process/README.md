# 02_file_process

This module demonstrates how Bash can be used to automate file maintenance and process monitoring on Unix-like systems.

---

## Scripts Included

### 🔹 `log_cleaner.sh`
Deletes `.log` files older than a specified number of days.

### 🔹 `cpu_memory_monitor.sh`
Displays current CPU and memory usage. Useful for lightweight system checks.

### 🔹 `trap_cleanup.sh`
Demonstrates signal trapping. Automatically deletes temp files on `CTRL+C`.

---

## Usage

```bash
chmod +x *.sh
./log_cleaner.sh /var/log/nginx 14
./cpu_memory_monitor.sh
./trap_cleanup.sh
