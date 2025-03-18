#!/bin/bash

cd /home/ubuntu/app || { echo "Failed to navigate to /home/ubuntu/app"; exit 1; }

if [ -f "app.zip" ]; then
  echo "Unzipping application files..."
  unzip -o app.zip || { echo "Failed to unzip app.zip"; exit 1; }
else
  echo "app.zip not found. Skipping extraction."
fi

if [ -f "package.json" ]; then
  echo "Installing Node.js dependencies..."
  npm install --production || { echo "Failed to install dependencies"; exit 1; }
else
  echo "package.json not found. Skipping npm install."
fi

echo "Dependency installation completed."
