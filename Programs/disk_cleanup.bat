@echo off
setlocal enabledelayedexpansion

:: Notify the user
echo Starting disk cleanup...

:: Clear Temp folder
echo Cleaning up Temporary Files...
del /q /f "%TEMP%\*"

:: Clear Windows Temp folder
echo Cleaning up Windows Temp folder...
del /q /f "C:\Windows\Temp\*"

:: Clear Internet Explorer Cache (for systems with IE)
echo Cleaning up Internet Explorer cache...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8

:: Clear Windows Update Files (requires admin rights)
echo Cleaning up Windows Update files...
del /q /f "C:\Windows\SoftwareDistribution\Download\*"

:: Clear System Recycle Bin
echo Cleaning up Recycle Bin...
rd /s /q C:\$Recycle.Bin

:: Clear Microsoft Edge Cache (for systems with Edge)
echo Cleaning up Microsoft Edge cache...
del /q /f "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache\*"

:: Clear Google Chrome Cache (for systems with Chrome)
echo Cleaning up Google Chrome cache...
del /q /f "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*"

:: Notify completion
echo Disk cleanup complete!
pause
