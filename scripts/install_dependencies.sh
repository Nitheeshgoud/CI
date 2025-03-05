#!/bin/bash
# Suppress debconf warnings
export DEBIAN_FRONTEND=noninteractive

# Create the application directory if it doesn't exist
mkdir -p /home/ubuntu/app

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Verify the package.json file exists
if [ ! -f /home/ubuntu/app/package.json ]; then
  echo "Error: package.json not found in /home/ubuntu/app"
  echo "Contents of /home/ubuntu/app:"
  ls -la /home/ubuntu/app
  exit 1
fi

# Install Node.js dependencies
cd /home/ubuntu/app
npm install
