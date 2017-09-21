@echo off
openfiles.exe 1>nul 2>&1
if errorlevel 1 (
    echo You are not administrator! Right Click file select run as admin!
    pause 1>nul 2>&1
    EXIT 1
)

SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

REM --- uninstall updates
echo Uninstalling updates, be patient...
for %%f in ( %~dp0*.list ) do (
    for /F "tokens=1,2,*" %%k in (%%~f) do (
        if "%%~l" gtr "%~1" (
            set _LIST=!_LIST! %%~k
            < nul: set /P _=Removing KB%%~k "%%~m"
            start "%%~k" /WAIT wusa.exe /kb:%%~k /uninstall /quiet /norestart
            if errorlevel 1 (
                echo  - not found.
            ) ELSE (
                echo  - done.
            )
        )
    )
)
echo.

REM --- Hide updates
echo Hiding updates, may take a while. Be patient...

cscript.exe /NoLogo "%~dp0HideWindowsUpdates.vbs" %_LIST%
echo  - done.
echo.

REM --- Disable tasks
echo Disabling tasks. Depending on Windows version this may give errors, this is normal...

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
echo - done.
echo.

REM --- Kill services
< NUL: SET /P =Killing Diagtrack-service (if it still exists)...
sc stop Diagtrack > NUL:
sc delete Diagtrack > NUL:
echo  - done.

echo.
echo Done. Manually Reboot for changes to take effect.
REM shutdown -r
