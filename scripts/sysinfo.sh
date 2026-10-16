#!/bin/bash
echo "===== System Information Report ====="
echo "Date:       $(date)"
echo "Hostname:   $(hostname)"
echo "OS/Kernel:  $(uname -sr)"
echo "Memory:"
free -h
echo "Disk usage:"
df -h /
