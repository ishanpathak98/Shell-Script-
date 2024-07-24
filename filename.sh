#!/bin/bash

# Define the filename
FILENAME="test.txt"

# Check if the file exists
if [ -f "$FILENAME" ]; then
  echo "$FILENAME exists."
else
  echo "$FILENAME does not exist."
fi
