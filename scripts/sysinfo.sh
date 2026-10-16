#!/bin/bash
echo "===== System Information Report ====="
echo "Date:       $(date)"
echo "Hostname:   $(hostname)"
echo "OS/Kernel:  $(uname -sr)"
echo "Memory:"
free -h
echo "Disk usage:"
df -h /
echo "Uptime:     $(uptime -p)"
echo "Load avg:   $(cut -d" " -f1-3 /proc/loadavg)"
echo "Report run at $(date)" >> ~/ds1202-project/logs/sysinfo.log
