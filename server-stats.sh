#!/bin/bash

echo "===== SERVER PERFORMANCE STATS ====="
echo

# OS and uptime 
echo "OS Version: $(uname -srvmo)"
echo "Uptime: $(uptime -p)"
echo "Load Average: $(uptime | awk -F'load average: ' '{ print $2 }')"
echo "Logged in users: $(who | wc -l)"
echo

# CPU Usage
echo "----- CPU USAGE -----"
top -bn1 | grep "Cpu(s)" | \
awk '{print "CPU Usage: " 100 - $8 "%"}'
echo

# Memory Usage
echo "----- MEMORY USAGE -----"
free -m | awk 'NR==2{
    total=$2; used=$3; free=$4;
    printf "Memory Usage: %.2f%%\n", used/total * 100
    printf "Used: %d MB\n", used
    printf "Free: %d MB\n", free
}'
echo

# Disk Usage
echo "----- DISK USAGE -----"
df -h / | awk 'NR==2 {
    print "Disk Usage: " $5
    print "Used: " $3
    print "Available: " $4
}'
echo

# Top 5 processes by CPU
echo "----- TOP 5 PROCESSES BY CPU USAGE -----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo

# Top 5 processes by Memory
echo "----- TOP 5 PROCESSES BY MEMORY USAGE -----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo

# Failed login attempts
echo "----- FAILED LOGIN ATTEMPTS -----"
lastb | head -n 5 2>/dev/null || echo "No access to 'lastb' command or no failed logins."
