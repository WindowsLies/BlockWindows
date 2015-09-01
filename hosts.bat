@echo off
REM This blocks MS telemetry IP's from hosts file. Appends to current hosts file, only run once.
REM WIN10 blocks this method, if running WIN10 add the entries in the file 'hosts' to your router or firewall blocklist

openfiles.exe 1>nul 2>&1
if not %errorlevel% equ 0 (
    Echo Requires Administrator Privileges! You are not administrator! Right Click file select run as admin
    pause
    EXIT 1
) else (

type %~dp0hosts >> %windir%\system32\Drivers\etc\hosts
echo Completed
pause
)
