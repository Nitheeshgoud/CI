#!/bin/bash
# Create the application directory if it doesn't exist
mkdir -p /home/ubuntu/app

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Node.js dependencies
cd /home/ubuntu/app
npm install
