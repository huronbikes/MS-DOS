@echo off
SET DOSDIR=\FREEDOS

SET DIRCMD=/P /OGN /Y

if exist %dosdir%\NLS\NUL set NLSPATH=%dosdir%\NLS
if exist %dosdir%\HELP\NUL set HELPPATH=%dosdir%\HELP

SET OS_NAME=FreeDOS
SET OS_VERSION=1.3
SET AUTOFILE=%0
SET CFGFILE=\FDCONFIG.SYS
alias reboot=fdapm warmboot
alias reset=fdisk /reboot
alias halt=fdapm poweroff
alias shutdown=fdapm poweroff

@echo off
echo setting up system to build the MS-DOS 4.01 SOURCE BAK...
set CL=
set LINK=
set MASM=
set COUNTRY=usa-ms
set BAKROOT=c:
rem BAKROOT points to the home drive/directory of the sources.
set LIB=%BAKROOT%\src\tools\lib
set INIT=%BAKROOT%\src\tools
set INCLUDE=%BAKROOT%\src\tools\inc
set PATH=%BAKROOT%\src\tools;%dosdir%\bin
