@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo No output file specified.
    exit /b 1
)

set "output_file=%~1"

del active_hosts.txt
echo Scanning the network for active hosts...
for /L %%i in (1,1,254) do (
    ping -n 1 -w 100 192.168.1.%%i | find "Reply from" > nul
    if !errorlevel! == 0 (
        echo 192.168.1.%%i is up
        echo 192.168.1.%%i >> active_hosts.txt
    )
)

echo.
echo Listing shares on active hosts...
echo Listing shares on active hosts... > %output_file%
for /f %%i in (active_hosts.txt) do (
    echo Listing shares for %%i >> %output_file%
    net view %%i >> %output_file%
    echo. >> %output_file%
)

echo Shares information saved to %output_file%.
endlocal