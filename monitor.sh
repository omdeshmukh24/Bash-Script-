#!/bin/bash
while true; do
  clear
  echo "================ SYSTEM MONITOR DASHBOARD ================"
  echo "Hostname: $(hostname)"
  echo "Uptime: $(uptime -p)"
  echo "CPU Load: $(top -bn1 | grep 'load average' | awk '{print $10 $11 $12}')"
  echo "Memory: $(free -h | awk '/Mem:/ {print $3 "/" $2 " used"}')"
  echo "Swap: $(free -h | awk '/Swap:/ {print $3 "/" $2 " used"}')"
  echo "Disk: $(df -h / | awk 'NR==2 {print $3 "/" $2 " used"}')"
  echo "Connections: $(ss -ant | grep ESTAB | wc -l)"
  echo "Top 5 Processes:"
  ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
  echo "=========================================================="
  sleep 2
done
