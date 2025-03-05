#!/bin/bash
set -e  # Exit on error

echo "Cleaning up /home/ubuntu/app..."

# Change ownership to ubuntu user (if files were created by root)
sudo chown -R ubuntu:ubuntu /home/ubuntu/app

# Grant full permissions to the user
sudo chmod -R u+rwx /home/ubuntu/app

# Remove files forcefully
rm -rf /home/ubuntu/app/*

echo "Cleanup complete."
