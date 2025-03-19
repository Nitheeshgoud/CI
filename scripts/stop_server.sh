#!/bin/bash
cd /home/ubuntu/java-application
pm2 stop app.js || echo "No running application to stop."
