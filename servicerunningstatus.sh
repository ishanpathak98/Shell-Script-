#!/bin/bash
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')
if [ $USAGE -gt 90 ]; then
    echo "Disk usage is above 90%."
    # Send alert here
fi

