#!/bin/bash
<<Note
The below script that checks if a directory named logs exists. If it does not exist, 
create it and print "Directory created." If it exists, print "Directory already exists."
Note
echo "Enter the name of the directory"
read name
if [-d "$name"]; then
echo "Directory already exist"
else
mkdir "$name"
echo "Directory Created"
fi
