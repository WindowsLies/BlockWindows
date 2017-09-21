# Updates.list format explained

The format itself is rather simple.
```
KBID Severity KB article description.
```

F.e.:
```
2952664 9 "Compatibility" update for upgrading Windows 7
2966583 9 "Improvements" for the "System Update Readiness Tool" in Windows 7 and Windows Server 2008 R2
```

Severity is then used by the [BlockWindows.bat](BlockWindows.bat) to decide which updates are to be treated, and which are free to pass.

The maximum safe severity is passed as the first argument. The default severity value is zero (technically, it is an empty string, but…), thus, if no arguments given, anything with severity 1 and up will be considered unwanted.

## Suggested severity values

* 9 - An unwanted piece.
* 5 - Windows Update Client updates.
* Anything lower - use in your additional lists at your own discretion.

To add a custom update list, just create a new file with the extension *.list.
