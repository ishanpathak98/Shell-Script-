#!/bin/bash

<<note
 This Script will install any package required passed as argument
./install_package.sh <arg>
note

echo "************INSTALLING $1*****************"

sudo apt-get update
sudo apt-get install $1 -y

sudo systemctl start $1
sudo systemctl enable $1

echo "************INSTALLED $1 SUCCESSFULLY*****************"

