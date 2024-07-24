#!/bin/bash

SERVICE="nginx"

# Check if the service is running
if systemctl is-active --quiet $SERVICE; then
  echo "$SERVICE is running."
else
  echo "$SERVICE is not running. Attempting to restart..."
  
  # Attempt to start the service
  sudo systemctl start $SERVICE
  
  # Check if the service started successfully
  if systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE successfully restarted."
  else
    echo "Failed to restart $SERVICE."
  fi
fi
