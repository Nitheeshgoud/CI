#!/bin/bash
cd /home/ubuntu/app
pm2 stop app.js || echo "No running application to stop."
