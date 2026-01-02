#!/bin/bash
######### Log Rotation Script ########

#### Author: Archana Singh


logs_files="/home/archana/logs/logs_files"
max_size=10000

if [ $(wc -c < "$logs_files" ) -gt $max_size ];
then
   mv "$logs_files" "$logs_files.old"
fi
