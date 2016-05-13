@echo off
openfiles.exe 1>nul 2>&1
if not %errorlevel% equ 0 (
    Echo You are not administrator! Right Click file select run as admin
    pause
    EXIT 1
) else (   

SETLOCAL

REM --- uninstall updates
echo Deleting updates, be patient...
echo Delete KB971033 (license validation)
start "title" /b /wait wusa.exe /kb:971033 /uninstall /quiet /norestart
echo  - next
echo Delete KB2505438 (Slow performance in applications that use DWrite on Windows 7 or Windows Server 2008 R2)
start "title" /b /wait wusa.exe /kb:2505438 /uninstall /quiet /norestart
echo  - next
echo Delete KB2670838 (Win 7 Only) (breaks AERO functionality and makes fonts blurry on some websites)
start "title" /b /wait wusa.exe /kb:2670838 /uninstall /quiet /norestart
echo  - next
echo Delete KB2876229 (Skype for Windows Update)
start "title" /b /wait wusa.exe /kb:2876229 /uninstall /quiet /norestart
echo  - next
echo Delete KB2902907 (Microsoft Security Essentials)
start "title" /b /wait wusa.exe /kb:2902907 /uninstall /quiet /norestart
echo  - next
echo Delete KB2952664 (Get Windows 10 assistant)
start "title" /b /wait wusa.exe /kb:2952664 /uninstall /quiet /norestart
echo  - next
echo Delete KB2970228 (buggy update)
start "title" /b wusa.exe /uninstall /kb:2970228 /quiet /norestart
echo  - next
echo Delete KB2976978 (update for windows 8.1 and windows 8)
start "title" /b /wait wusa.exe /kb:2976978 /uninstall /quiet /norestart
echo  - next
echo Delete KB2976987 (Compatibility update for windows 8.1 and windows 8)
start "title" /b /wait wusa.exe /kb:2976987 /uninstall /quiet /norestart
echo  - next
echo Delete KB2977759 (update for windows 7 rtm)
start "title" /b /wait wusa.exe /kb:2977759 /uninstall /quiet /norestart
echo  - next
echo Delete KB2982791 (buggy update)
start "title" /b wusa.exe /uninstall /kb:2982791 /quiet /norestart
echo  - next
echo Delete KB2990214 (Get Windows 10 for Win7)
start "title" /b /wait wusa.exe /kb:2990214 /uninstall /quiet /norestart
echo  - next
echo Delete KB3008273 (update that enables Windows RT to update to Windows RT 8.1, and Window 8 to update to Windows 8.1)
start "title" /b /wait wusa.exe /kb:3008273 /uninstall /quiet /norestart
echo  - next
echo Delete KB3012973 (Upgrade to Windows 10 Pro)
start "title" /b /wait wusa.exe /kb:3012973 /uninstall /quiet /norestart
echo  - next
echo Delete KB3014460 (Upgrade for windows insider preview / upgrade to windows 10)
start "title" /b /wait wusa.exe /kb:3014460 /uninstall /quiet /norestart
echo  - next
echo Delete KB3015249 (Upgrade that adds telemetry points to consent.exe in Windows 8.1 and Windows 7)
start "title" /b /wait wusa.exe /kb:3015249 /uninstall /quiet /norestart
echo  - next
echo Delete KB3021917 (update to Windows 7 SP1 for performance improvements)
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
echo Delete KB3046480 (Migrate the .NET Framework 1.1 when upgrading Win 7/8.1)
start "title" /b /wait wusa.exe /kb:3046480 /uninstall /quiet /norestart
echo  - next
echo Delete KB3050265 (update for Windows Update on Win7)
start "title" /b /wait wusa.exe /kb:3050265 /uninstall /quiet /norestart
echo  - next
echo Delete KB3050267 (update for windows update client for windows 8.1 june 2015)
start "title" /b /wait wusa.exe /kb:3050267 /uninstall /quiet /norestart
echo  - next
echo Delete KB3065987 (update for Windows Update on Win7/Server 2008R2)
start "title" /b /wait wusa.exe /kb:3065987 /uninstall /quiet /norestart
echo  - next
echo Delete KB3065988 (update for Windows Update on Win8.1/Server 2012R2)
start "title" /b /wait wusa.exe /kb:3065988 /uninstall /quiet /norestart
echo  - next
echo Delete KB3068707 (Customer experience telemetry point for W7,8,8.1)
start "title" /b /wait wusa.exe /kb:3068708 /uninstall /quiet /norestart
echo  - next
echo Delete KB3068708 (telemetry)
start "title" /b /wait wusa.exe /kb:3068708 /uninstall /quiet /norestart
echo  - next
echo Delete KB3072318 (Update for Windows 8.1 OOBE to upgrade to Windows 10)
start "title" /b /wait wusa.exe /kb:3072318 /uninstall /quiet /norestart
echo  - next
echo Delete KB3072630 (Solidworks)
start "title" /b /wait wusa.exe /kb:3072630 /uninstall /quiet /norestart
echo  - next
echo Delete KB3075249 (telemetry for Win7/8.1)
start "title" /b /wait wusa.exe /kb:3075249 /uninstall /quiet /norestart
echo  - next
echo Delete KB3075851 (update for Windows Update on Win7/Server 2008R2)
start "title" /b /wait wusa.exe /kb:3075851 /uninstall /quiet /norestart
echo  - next
echo Delete KB3075853 (update for Windows Update on Win8.1/Server 2012R2)
start "title" /b /wait wusa.exe /kb:3075853 /uninstall /quiet /norestart
echo  - next
echo Delete KB3080149 (Telemetry)
start "title" /b /wait wusa.exe /kb:3080149 /uninstall /quiet /norestart
echo  - next
echo Delete KB3081452 (Ensures smooth experience for updating to future versions)
start "title" /b /wait wusa.exe /kb:3081452 /uninstall /quiet /norestart
echo  - next
echo Delete KB3081954 (Telemetry Update for Windows 7)
start "title" /b wusa.exe /uninstall /kb:3081954 /quiet /norestart
echo  - next
echo Delete KB3083710 (Windows Update Client for Windows 7 and Windows Server 2008 R2)
start "title" /b wusa.exe /uninstall /kb:3083710 /quiet /norestart
echo  - next
echo Delete KB3083711 (Windows Update Client for Windows 8.1 and Windows Server 2012 R2)
start "title" /b wusa.exe /uninstall /kb:3083711 /quiet /norestart
echo  - next
echo Delete KB3090045 (Windows Update for reserved devices in Windows 8.1 or Windows 7 SP1)
start "title" /b wusa.exe /uninstall /kb:3090045 /quiet /norestart
echo  - next
echo Delete KB3102810 (update for "Windows Update")
start "title" /b wusa.exe /uninstall /kb:3102810 /quiet /norestart
echo  - next
echo Delete KB3112336 (monitor quality of upgrade experience)
start "title" /b /wait wusa.exe /kb:3112336 /uninstall /quiet /norestart
echo  - next
echo Delete KB3112343 (Windows Update Client for Windows 7)
start "title" /b wusa.exe /uninstall /kb:3112343 /quiet /norestart
echo  - next
echo Delete KB3123862 (Updated capabilities to upgrade Win8.1 and Win7)
start "title" /b /wait wusa.exe /kb:3123862 /uninstall /quiet /norestart
echo  - next
echo Delete KB3133977 (buggy update)
start "title" /b wusa.exe /uninstall /kb:3133977 /quiet /norestart
echo  - next
echo Delete KB3135445 (Windows Update Client for Windows 7)
start "title" /b wusa.exe /uninstall /kb:3135445 /quiet /norestart
echo  - next
echo Delete KB3138612 (Windows Update Client for Windows 7)
start "title" /b wusa.exe /uninstall /kb:3138612 /quiet /norestart
echo  - next
echo Delete KB3138615 (Windows Update Client for Windows 8.1)
start "title" /b wusa.exe /uninstall /kb:3138615 /quiet /norestart
echo  - next
echo Delete KB3139929 (Get Windows 10 update for MSIE)
start "title" /b wusa.exe /uninstall /kb:3139929 /quiet /norestart
echo  - next
echo Delete KB3150513 (Compatibility Update (another GWX) for Windows 7/8.1)
start "title" /b wusa.exe /uninstall /kb:3150513 /quiet /norestart
echo  - done.
timeout 5

REM --- Hide updates
echo Hiding updates, may take a while be patient...

start "title" /b /wait cscript.exe "%~dp0HideWindowsUpdates.vbs" 971033 2505438 2670838 2876229 2902907 2952664 2970228 2976978 2976987 2977759 2982791 2990214 3008273 3012973 3014460 3015249 3021917 3022345 3035583 3044374 3046480 3050265 3050267 3065987 3065988 3068707 3068708 3072318 3072630 3075249 3075851 3075853 3080149 3081452 3081954 3083710 3083711 3090045 3102810 3112336 3112343 3123862 3133977 3135445 3138612 3138615 3139929 3150513
echo  - done.

REM --- Disable tasks
echo Disabling tasks. Depending on Windows version this may have errors, this is normal...
timeout 3

schtasks /Change /TN "\Microsoft\Windows\Application Experience\AitAgent" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Autochk\Proxy" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /DISABLE
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
echo Killing Diagtrack-service (if it still exists)...
sc stop Diagtrack
sc delete Diagtrack
echo - done

echo Stop remoteregistry-service (if it still exists)...
sc config remoteregistry start= disabled
sc stop remoteregistry

echo Done. Manually Reboot for changes to take effect
REM shutdown -r
pause
)
