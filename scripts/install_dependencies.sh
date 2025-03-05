#!/bin/bash
# Suppress debconf warnings
export DEBIAN_FRONTEND=noninteractive

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Node.js dependencies
cd /home/ubuntu/app
npm install
