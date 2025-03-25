(
echo @echo off
echo echo "Cleaning up old deployment..."
echo rmdir /s /q C:\opt\my-app
echo mkdir C:\opt\my-app
) > scripts\before_install.sh