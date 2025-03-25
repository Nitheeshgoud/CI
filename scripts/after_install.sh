(
echo @echo off
echo echo "Installing dependencies..."
echo cd /d C:\opt\my-app
echo npm ci --production
) > scripts\after_install.sh