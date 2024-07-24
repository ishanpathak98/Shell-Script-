#!/bin/bash

# Define the filename
DIRECTORY="/path/of/directory/"

# Check if the file exists
if [ -d "$DIRECTORY" ]; then
  echo "$DIRECTORY exists."
else
  echo "$DIRECTORY does not exist."
fi
