#!/bin/bash 

<<'Note'
This script includes:
- Comments 
- Echo 
- Variables 
- Using Variables 
- Using Built-in Variables 
- Wildcards 
Note

#Below is the echo which will print anything we write to the terminal

echo "Welcome to First Shell Script"

#We will declare varialble 

greeting= "Welcome to first shell script"

echo $greeting

#Now we will use variable 

name=Ishan

echo " Hello $name $greeting "

#Now we will use some built-in function

echo " Displaying the present working directory : $PWD "
echo " Displaying the user : $whoami "
echo " Displaying home directory : $HOME "

#Wildcards help in searching files with patterns

echo " Listing all the file ends with .sh in current directory "
ls *.sh
