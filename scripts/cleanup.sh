#!/bin/bash
# Clean up the target directory
TARGET_DIR="/home/ubuntu/app"
if [ -d "$TARGET_DIR" ]; then
  echo "Cleaning up $TARGET_DIR..."
  rm -rf "$TARGET_DIR"/*
else
  echo "Target directory $TARGET_DIR does not exist."
  exit 1
fi
