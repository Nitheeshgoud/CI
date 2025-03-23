#!/bin/bash
set -e  # Exit on first error

echo "Installing Node.js and npm..."

# Update package lists
sudo apt update -y

# Install Node.js and npm (Latest LTS)
sudo apt install -y nodejs npm

# Verify installation
node -v
npm -v

# Ensure npm is in PATH
export PATH=$PATH:/usr/bin
echo "Node.js and npm installed successfully!"

# Install project dependencies
echo "Installing project dependencies..."
npm install
echo "Dependencies installed successfully!"
