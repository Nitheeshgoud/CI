(
echo @echo off
echo set MAX_RETRIES=5
echo set RETRY_DELAY=5
echo echo "Validating service health..."
echo 
echo for /L %%i in (1,1,%MAX_RETRIES%) do (
echo   curl -f http://localhost:3000/health
echo   if not errorlevel 1 (
echo     echo Service is healthy!
echo     exit /b 0
echo   )
echo   echo Attempt %%i failed. Retrying in %RETRY_DELAY% seconds...
echo   timeout /t %RETRY_DELAY% > nul
echo )
echo echo Service validation failed after %MAX_RETRIES% attempts
echo exit /b 1
) > scripts\validate_service.sh