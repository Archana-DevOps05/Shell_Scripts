#!/bin/bash
subject="Alert: High CPU Usage"
body="CPU usage exceed 40%"
recipient="archusingh273@gmail.com"
echo "$body" | mail -s "$subject" "$recipient"
