#!/bin/bash
access_log="/var/log/apache2/access.log.1"
error_log="/var/log/apache2/error.log.1"
# Analyze access log
echo "Top 5 IP addresses:"
awk '{print $1 $2}' "$access_log" | sort | uniq -c | sort -nr |head -n 5
# Ananlyze error log
echo "Errors by type:"
awk '{print $9 $10}' "$error_log" | sort | uniq -c | sort -nr
