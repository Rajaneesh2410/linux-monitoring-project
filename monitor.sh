#!/bin/bash

LOG_FILE="$HOME/linux-monitoring-project/logs/system-monitor.log"

echo "====================================" >> "$LOG_FILE"
echo "System Monitoring Report" >> "$LOG_FILE"
echo "Date: $(date)" >> "$LOG_FILE"
echo "====================================" >> "$LOG_FILE"

echo "CPU Load:" >> "$LOG_FILE"
uptime >> "$LOG_FILE"

echo "Memory Usage:" >> "$LOG_FILE"
free -h >> "$LOG_FILE"

echo "Disk Usage:" >> "$LOG_FILE"
df -h >> "$LOG_FILE"

echo "Disk Usage Alerts:" >> "$LOG_FILE"

df -P / | awk 'NR==2 {
    usage=$5
    sub(/%/, "", usage)

    if (usage >= 80)
        print "WARNING: Disk usage is above 80%!" >> "'"$LOG_FILE"'"
    else
        print "Disk usage is normal." >> "'"$LOG_FILE"'"
}'

echo "Monitoring completed successfully!"
