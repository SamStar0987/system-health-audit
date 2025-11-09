#!/bin/bash
# sys-audit.sh — Simple System Health Reporter (Beginner Friendly)
# Author: Your Name
# Description: Collects basic system info and saves a report.

REPORT_DIR="$HOME/sys_reports"
REPORT_FILE="$REPORT_DIR/system_report_$(date +'%Y-%m-%d_%H-%M-%S').txt"

mkdir -p "$REPORT_DIR"

{
  echo "===== System Health Report ====="
  echo "Generated: $(date)"
  echo
  echo "Hostname: $(hostname)"
  echo "Uptime: $(uptime -p)"
  echo "Kernel: $(uname -r)"
  echo "IP Address: $(hostname -I 2>/dev/null || echo 'No IP found')"
  echo
  echo "---- Disk Usage ----"
  df -h
  echo
  echo "---- Memory ----"
  free -h
  echo
  echo "---- Active Users ----"
  who || echo "who command unavailable"
  echo
  echo "---- Recent Errors (syslog) ----"
  if [ -r /var/log/syslog ]; then
    sudo grep -i "error\|fail\|critical" /var/log/syslog | tail -n 10
  elif [ -r /var/log/messages ]; then
    sudo grep -i "error\|fail\|critical" /var/log/messages | tail -n 10
  else
    echo "No readable syslog/messages file found."
  fi
} > "$REPORT_FILE"

echo "Report saved to: $REPORT_FILE"
