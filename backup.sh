#!/bin/bash

backup_dir="/path/to/backup"
source_dir="/path/to/source"
timestamp=$(date +"%Y%m%d%H%M%S")
backup_file="$backup_dir/backup_$timestamp.tar.gz"

# Create backup directory if it does not exist
mkdir -p "$backup_dir"

# Perform the backup
tar -czf "$backup_file" -C "$source_dir" .
