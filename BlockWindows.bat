ECHO OFF
REM --- Remember to invoke from ELEVATED command prompt!
REM --- Start by right clicking this file and "run as admin"
SETLOCAL

REM --- uninstall updates
echo uninstalling updates ...
echo Delete KB971033 (license validation)
start "title" /b /wait wusa.exe /kb:971033 /uninstall /quiet /norestart
echo  - next
eecho Delete KB2902907 (Microsoft Security Essentials)
start "title" /b /wait wusa.exe /kb:2902907 /uninstall /quiet /norestart
echo  - next
echo Delete KB2952664 (Get Windows 10 assistant)
start "title" /b /wait wusa.exe /kb:2952664 /uninstall /quiet /norestart
echo  - next
echo Delete KB2976987 (description not available)
start "title" /b /wait wusa.exe /kb:2976978 /uninstall /quiet /norestart
echo  - next
echo Delete KB2990214 (Get Windows 10 for Win7)
start "title" /b /wait wusa.exe /kb:2990214 /uninstall /quiet /norestart
echo  - next
echo Delete KB3012973 (Upgrade to Windows 10 Pro)
start "title" /b /wait wusa.exe /kb:3012973 /uninstall /quiet /norestart
echo  - next
echo Delete KB3021917 (Update to Windows 7 SP1 for performance improvements)
start "title" /b /wait wusa.exe /kb:3021917 /uninstall /quiet /norestart
echo  - next
echo Delete KB3022345 (telemetry)
start "title" /b /wait wusa.exe /kb:3022345 /uninstall /quiet /norestart
echo  - next
echo Delete KB3035583 (GWX Update installs Get Windows 10 app in Windows 8.1 and Windows 7 SP1)
start "title" /b /wait wusa.exe /kb:3035583 /uninstall /quiet /norestart
echo  - next
echo Delete KB3044374 (Get Windows 10 for Win8.1)
start "title" /b /wait wusa.exe /kb:3044374 /uninstall /quiet /norestart
echo  - next
echo Delete KB3050265 (update for Windows Update on Win7)
start "title" /b /wait wusa.exe /kb:3050265 /uninstall /quiet /norestart
echo  - next
echo Delete KB3065987 (update for Windows Update on Win7/Server 2008R2)
start "title" /b /wait wusa.exe /kb:3065987 /uninstall /quiet /norestart
echo  - next
echo Delete KB3068708 (telemetry)
start "title" /b /wait wusa.exe /kb:3068708 /uninstall /quiet /norestart
echo  - next
echo Delete KB3075249 (telemetry for Win7/8.1)
start "title" /b /wait wusa.exe /kb:3075249 /uninstall /quiet /norestart
echo  - next
echo Delete KB3075853 (update for Windows Update on Win8.1/Server 2012R2)
start "title" /b /wait wusa.exe /kb:3075853 /uninstall /quiet /norestart
echo  - next
echo Delete KB3080149 (Telemetry)
start "title" /b /wait wusa.exe /kb:3080149 /uninstall /quiet /norestart
echo  - done.
timeout 5

REM --- Hide updates
echo Hiding updates ...
start "title" /b /wait cscript.exe "%~dp0HideWindowsUpdates.vbs" 971033 2902907 2952664 2976978 2990214 3012973 3021917 3022345 3035583 3044374 3050265 3065987 3068708 3075249 3075853 3080149 
echo  - done.

REM --- Block Routes
echo Blocking Routes…
route -p add 23.218.212.69 MASK 255.255.255.255 0.0.0.0
route -p add 65.55.108.23 MASK 255.255.255.255 0.0.0.0
route -p add 65.39.117.230 MASK 255.255.255.255 0.0.0.0
route -p add 134.170.30.202 MASK 255.255.255.255 0.0.0.0
route -p add 137.116.81.24 MASK 255.255.255.255 0.0.0.0
route -p add 204.79.197.200 MASK 255.255.255.255 0.0.0.0
route -p add 23.218.212.69 MASK 255.255.255.255 0.0.0.0
echo - done

REM --- Disable tasks
echo Disabling tasks…
schtasks /Change /TN "\Microsoft\Windows\Application Experience\AitAgent" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Autochk\Proxy" /DISABLE
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Maintenance\WinSAT" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\ActivateWindowsSearch" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\ConfigureInternetTimeService" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\DispatchRecoveryTasks" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\ehDRMInit" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\InstallPlayReady" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\mcupdate" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\MediaCenterRecoveryTask" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\ObjectStoreRecoveryTask" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\OCURActivate" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\OCURDiscovery" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\PBDADiscovery" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\PBDADiscoveryW1" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\PBDADiscoveryW2" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\PvrRecoveryTask" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\PvrScheduleTask" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\RegisterSearch" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\ReindexSearchRoot" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\SqlLiteRecoveryTask" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Media Center\UpdateRecordPath" /DISABLE
echo - done

REM --- Kill services
echo Killing Diagtrack-service (if it still exists)…
sc stop Diagtrack
sc delete Diagtrack
echo - done

echo Stop remoteregistry-service (if it still exists)…
sc config remoteregistry start= disabled
sc stop remoteregistry

echo Done — Manually Reboot for changes to take effect
REM shutdown -r
pause
