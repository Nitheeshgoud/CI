#!/bin/bash
# Clean up the application directory
echo "Cleaning up /home/ubuntu/app..."
rm -rf /home/ubuntu/app/public/css/*
rm -rf /home/ubuntu/app/public/js/*
rm -rf /home/ubuntu/app/public/img/*
rm -rf /home/ubuntu/app/public/*.html
rm -rf /home/ubuntu/app/scripts/*
echo "Cleanup complete."
