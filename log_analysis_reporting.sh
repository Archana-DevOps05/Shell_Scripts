#!/bin/bash
######## Log Ananlysis and Reporting Script ########
###### Author: Archana Singh

log_file="/home/archana/logs/logfile.log"
error_count=$(grep -c "ERROR" "$log_file")
warning_count=$(grep -c "WARNING" "$log_file")
echo "Error count: $error_count"
echo "Warning count: $warning_count"
