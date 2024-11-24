@echo off
SET DOSDIR=\FREEDOS
SET LANG=
SET TZ=
SET PATH=%dosdir%\BIN

SET DIRCMD=/P /OGN /Y
rem SET COPYCMD=/-Y

rem SET TEMP=%dosdir%\TEMP
rem SET TMP=%TEMP%

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

