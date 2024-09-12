#!/bin/bash
CPU=$(top -bn1 | grep "CPU(s)" | awk '{print $2 +$4}')
if (( $(echo "$CPU >80.0" | bc -l) )); then
	echo"CPU Usage is above 80%:$CPU"*
fi

