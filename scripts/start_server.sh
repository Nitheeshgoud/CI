#!/bin/bash
# Start the Node.js application
cd /home/ubuntu/app
nohup node server.js > /dev/null 2>&1 &
