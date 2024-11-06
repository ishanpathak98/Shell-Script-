#!/bin/bash

<<note
This Script takes backup of any destinationgiven under argument
note

backup_dir="${timestamp}_backup.zip"

timestamp=$(date '+%Y%m%d_%H%M%S')

zip -r $backup_dir $1 

echo"Backup Created Successfully"

