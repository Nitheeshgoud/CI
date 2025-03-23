#!/bin/bash
set -e  # Exit immediately if any command fails

DEPLOY_DIR="/opt/codedeploy-agent/deployment-root"
LOG_FILE="/var/log/cleanup.log"

# Ensure the log file is writable
sudo touch $LOG_FILE
sudo chmod 666 $LOG_FILE

echo "Cleaning up old deployment files..." | sudo tee -a $LOG_FILE

# Find and delete old deployments (keep latest 2)
ls -td "$DEPLOY_DIR"/* | tail -n +3 | xargs -r sudo rm -rf

echo "Cleanup completed!" | sudo tee -a $LOG_FILE
