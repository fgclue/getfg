@echo off
echo getfg Installer
echo.
echo Are you sure you wanna Install ezping v1.0.0 Pong?
set /p sure="> "

if "%sure%" == "yes" goto yes
if "%sure%" == "no" goto no

:yes
echo Where to store Hello World? 
echo (e.g. C:\Directory\ezping\)
set /p stored="> "
if not exist "%stored%" mkdir %stored% > NUL
cd /d %stored% 
wget https://github.com/fgclue/ezping-basic/releases/download/last/ezping.bat
echo Succefully Installed ezping v1.0.0 Pong.
pause
exit

:no
exit