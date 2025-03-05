#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu/app || { echo "Failed to navigate to /home/ubuntu/app"; exit 1; }

# Unzip the deployment bundle
if [ -f "app.zip" ]; then
  unzip -o app.zip || { echo "Failed to unzip app.zip"; exit 1; }
else
  echo "app.zip not found."
fi

# Check for package.json and install dependencies
if [ -f "package.json" ]; then
  echo "Installing Node.js dependencies..."
  npm install || { echo "Failed to install dependencies"; exit 1; }
else
  echo "package.json not found. Skipping npm install."
fi

echo "Dependency installation completed."
