#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

DEPLOY_DIR="/opt/codedeploy-agent/deployment-root"
LOG_FILE="/var/log/cleanup.log"

echo "Cleaning up old deployment files..." | tee -a $LOG_FILE

# Find and delete old deployments (keep latest 2)
ls -td "$DEPLOY_DIR"/* | tail -n +3 | xargs -r rm -rf

echo "Cleanup completed!" | tee -a $LOG_FILE
