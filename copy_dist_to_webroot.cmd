@echo off

set SCRIPT_DIR=%~dp0

set DIST_PATH=%~dp0\dist\MyAngularApp
set WEBROOT_PATH=C:\workspace\web-root

rmdir /s /q "%WEBROOT_PATH%"
mkdir "%WEBROOT_PATH%"
xcopy /s /y "%DIST_PATH%"\*.* "%WEBROOT_PATH%"

pause