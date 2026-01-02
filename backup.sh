#!/bin/bash
############ Backup Script ##############
### Author: Archana Singh
backup_dir="/home/archana/backup-script/automated_script"
source_dir="/home/archana/logs"
mkdir -p "$backup_dir"
timestamp=$(date +"%Y%m%d%M%H%M%S")
tar -czf "$backup_dir/backup_$timestamp.tar.gz" -C /home/archana logs
