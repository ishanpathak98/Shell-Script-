#!/bin/bash

: <<'Note'
Shell script that checks if a service (e.g., nginx) is running.
If it is, print "Service is running"; otherwise, print "Service is not running."
Note

echo "Enter the name of the service"
read service

if systemctl is-active --quiet "$service"; then
    echo "Service is running"
else
    echo "Service is not running"
fi
