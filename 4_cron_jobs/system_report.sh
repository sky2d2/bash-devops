#!/bin/bash
# Logs current system stats to a file

logfile="system_report_$(date +%Y%m%d).log"

{
  echo "🧾 System Report — $(date)"
  echo "-----------------------------"
  echo "📍 Uptime:"
  uptime
  echo ""
  echo "📊 Disk Usage:"
  df -h
  echo ""
  echo "🧠 Memory Usage:"
  free -h
  echo ""
  echo "🔥 Top CPU Consumers:"
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
  echo "-----------------------------"
} >> "$logfile"

echo "✅ System report saved to $logfile"
