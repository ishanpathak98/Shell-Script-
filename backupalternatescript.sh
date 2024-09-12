#!/bin/bash
find /path/of/the/backup -type f -mtime +7 -exec cp{} /path/to/archive/ \; 

#Explanation

<< Comment

find /path/to/backup:
The find command starts searching for files in the directory /path/to/backup. You would replace /path/to/backup with the actual directory path where your backup files are stored.

-type f:
This option tells find to only look for files. It excludes directories, links, and other types of filesystem objects.

-mtime +7:
This option filters the files based on their modification time. -mtime +7 means "files that were modified more than 7 days ago." It excludes files modified within the last 7 days.

-exec cp {} /path/to/archive/ \;:
This part tells find to execute the cp (copy) command on every file it finds that matches the previous criteria.

    cp is the copy command.
    {} is a placeholder that gets replaced by each file found.
    /path/to/archive/ is the destination where the files will be copied. You need to replace this with the actual path of your archive directory.
    \; ends the -exec command?   
Comment
