@echo off
echo getfg Installer
echo.
echo Are you sure you wanna install C++ Simualator v1.0.0?
set /p sure="> "

if "%sure%" == "yes" goto yes
if "%sure%" == "no" goto no

:yes
echo Where to store C++ Simulator?
echo (e.g. C:\Directory\AliasCreator\)
set /p stored="> "
if not exist "%stored%" mkdir %stored% > NUL
cd /d %stored% 
wget https://raw.githubusercontent.com/fgclue/repository-of-apps/main/windows/aliascreator.bat
echo true > firsttime.acd
echo Succefully Installed Alias Creator.
pause
exit

:no
exit