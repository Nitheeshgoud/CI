#!/bin/bash
cd /var/www/app
echo "Starting application..."
pm2 stop all || true
pm2 start server.js --name node-app
pm2 save
