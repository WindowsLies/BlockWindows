REM This blocks MS telemetry IP's from hosts file. Appends to current hosts file, only run once
REM Windows 10 bypasses this, if running WIN10 add the entries in the file 'hostslist' to your router or firewall blocklist
REM Put all files in your Downloads directory. Right click and run this file as administrator
type %homepath%\Downloads\hosts >> %windir%\system32\Drivers\etc\hosts
echo Completed
pause
