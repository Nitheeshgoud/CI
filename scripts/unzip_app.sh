#!/bin/bash
# Unzip the app.zip file
unzip -o /home/ubuntu/app/app.zip -d /home/ubuntu/app

# Verify the package.json file exists
if [ ! -f /home/ubuntu/app/package.json ]; then
  echo "Error: package.json not found in /home/ubuntu/app"
  echo "Contents of /home/ubuntu/app:"
  ls -la /home/ubuntu/app
  exit 1
fi
