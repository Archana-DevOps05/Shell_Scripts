#!/bin/bash
threshold=90
disk_usage=$(df -h | grep "/dev/sda1" | awk '{print $5}' | tr -d '%')
if [ "$disk_usage" -gt "$threshold" ]; 
then
   echo "Disk space usage exceed $threshold%"
    # Send alert here
else
   echo "Disk space usage not exceed $threshold%"
fi
