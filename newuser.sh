#!/bin/bash

# Check if user provided a username
if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

USERNAME=$1

# Create a new user
sudo useradd -m -s /bin/bash $USERNAME

# Set a password for the user
sudo passwd $USERNAME

