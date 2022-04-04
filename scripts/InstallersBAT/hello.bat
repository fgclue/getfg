@echo off
echo getfg Installer
echo. 
echo Are you sure you wanna Install Hello World?
set /p sure="> "

if "%sure%" == "yes" goto yes
if "%sure%" == "no" goto no

:yes
echo Where to store Hello World?
echo (e.g. C:\Directory\HelloWorld\)
set /p stored="> "
if not exist "%stored%" mkdir %stored% > NUL
cd /d %stored% 
wget https://github.com/fgclue/helloworld/releases/download/terminal/HelloWorld.exe
echo Succefully Installed Hello World.
pause
exit

:no
exit