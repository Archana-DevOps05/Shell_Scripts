#!/bin/bash
########### Database Backup Script ###########
###### Author: Archana Singh

db_user="root"
db_pass="    "
db_name="school_db"
backup_dir="/home/archana/logs/DB_Backup"

mkdir -p "$backup_dir"

timestamp=$(date +"%Y%m%d%H%M%S")
mysqldump -u "$db_user" -p"$db_pass" "$db_name" | gzip > "$backup_dir/db_backup_$timestamp.sql.gz"
