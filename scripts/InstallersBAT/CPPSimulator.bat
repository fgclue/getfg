@echo off
echo getfg Installer
echo.
echo Are you sure you wanna install C++ Simualator v1.0.0?
set /p sure="> "

if "%sure%" == "yes" goto yes
if "%sure%" == "no" goto no

:yes
echo Where to store C++ Simulator?
echo (e.g. C:\Directory\CPPSim\)
set /p stored="> "
if not exist "%stored%" mkdir %stored% > NUL
cd /d %stored% 
wget https://raw.githubusercontent.com/fgclue/repository-of-apps/main/windows/CPPSim/CPPSim/cppsim.bat
echo true > firstime.cpsd
echo Succefully Installed C++ Simulator.
pause
exit

:no
exit