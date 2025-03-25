(
echo @echo off
echo echo "Starting application..."
echo cd /d C:\opt\my-app
echo start "MyApp" npm start
) > scripts\start_server.sh