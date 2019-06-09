@ECHO OFF
openfiles.exe 1>nul 2>&1
IF ERRORLEVEL 1 (
    ECHO You are not administrator! Right Click file select run as admin!
    PAUSE 1>nul 2>&1
    EXIT 1
)

SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

FOR %%f IN ( %~dp0*.list ) DO (
    FOR /F "tokens=1,2,*" %%k IN (%%~f) DO (
        IF "%%~l" GTR "%~1" (
            SET _LIST=!_LIST! %%~k
        )
    )
)

REM --- Hide updates
ECHO Hiding updates, may take a while be patient...

cscript.exe /NoLogo "%~dp0HideWindowsUpdates.vbs" %_LIST%
ECHO  - done.
ECHO.
