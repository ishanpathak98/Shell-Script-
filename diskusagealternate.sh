#!/bin/bash
CPU=$(top -bn1 | grep "CPU(s)" | awk '{print $2 +$4}')
if (( $(echo "$CPU >80.0" | bc -l) )); then
	echo"CPU Usage is above 80%:$CPU"*
fi



#Explanation

<<Comment

CPU=$ (top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

    top -bn1: Runs the top command in batch mode (-b), with only one iteration (-n1), to display real-time system stats.
    grep "Cpu(s)": Filters out the line from the top output that contains the CPU usage information.
    awk '{print $2 + $4}': Processes the CPU data. In the Cpu(s) line from top, $2 represents the percentage of CPU in user space, and $4 represents the percentage in system space. The awk command adds these two percentages together to give the total CPU usage.
    CPU=$(...): The result is stored in the variable CPU.

. if  (( $(echo "$CPU > 80.0" | bc -l) )); then

    echo "$CPU > 80.0" | bc -l:
    This compares the CPU usage ($CPU) with the threshold of 80.0.
        echo "$CPU > 80.0" sends the comparison expression to bc, which is a command-line calculator.
        bc -l uses the -l option for floating-point math (because Bash doesn’t handle floating-point numbers natively).
    if (( ... )); then:
    This checks if the comparison evaluates to true (i.e., if the CPU usage is greater than 80%).

. echo "CPU usage is above 80%: $CPU"

    If the condition is met (CPU usage is above 80%), this line prints a message showing the current CPU usage.

. # Send alert here 
Comment


