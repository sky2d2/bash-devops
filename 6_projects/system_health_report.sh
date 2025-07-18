#!/bin/bash
# Logs system uptime, memory, CPU, and disk usage into a daily report file

timestamp=$(date '+%Y-%m-%d %H:%M:%S')
report="system_health_$(date '+%Y-%m-%d').log"

echo "System Health Report - $timestamp" >> "$report"
echo "-------------------------------" >> "$report"

echo "Uptime:" >> "$report"
uptime >> "$report"

echo -e "\nMemory Usage:" >> "$report"
free -h >> "$report"

echo -e "\nCPU Load:" >> "$report"
top -bn1 | grep "load average" >> "$report"

echo -e "\nDisk Usage:" >> "$report"
df -h >> "$report"

echo "Report saved to $report"
echo "System health report generated successfully."
echo "You can view the report at: $(realpath "$report")"