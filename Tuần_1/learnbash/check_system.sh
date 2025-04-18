#!/bin/bash
#
##bien thong tin
HOST=$(hostname)
DISK=$(df -h /| tail -1 | awk '{print $5}') #get % disk
CPU=$(top -bn1 | grep "Cpu(s)" | awk -F',' '{print $1}' | awk '{print $2}') #get % CPU

# in
echo "Hostname: $HOST"
echo "Disk usage: $DISK"
echo "CPU usage : $CPU%"
~                              
