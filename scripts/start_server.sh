#!/bin/bash

echo "Starting the Node.js application..."
cd /home/ubuntu/app || { echo "Failed to navigate to /home/ubuntu/app"; exit 1; }

nohup node server.js > /dev/null 2>&1 &

echo "Application started successfully."
