#!/bin/bash

echo "Stopping the Node.js application..."
pkill -f "node server.js" && echo "Application stopped." || echo "No running application found."
