#!/bin/bash
# Displays CPU and memory usage with timestamp

echo "📊 System Resource Monitor"
echo "--------------------------"
echo "Time: $(date)"
echo ""

echo "🧠 Memory Usage:"
free -h
echo ""

echo "🔥 CPU Load:"
uptime
echo ""

echo "Top 5 CPU Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
