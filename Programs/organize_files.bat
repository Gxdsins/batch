@echo off
setlocal enabledelayedexpansion

:: Ask user for folder path
echo Enter the full path of the folder you want to organize:
set /p folderpath=

:: Check if folder exists
if not exist "!folderpath!" (
    echo The folder does not exist. Exiting...
    exit /b
)

:: Create folders for each category
mkdir "%folderpath%\Documents" 2>nul
mkdir "%folderpath%\Images" 2>nul
mkdir "%folderpath%\Videos" 2>nul
mkdir "%folderpath%\Music" 2>nul
mkdir "%folderpath%\Archives" 2>nul
mkdir "%folderpath%\Others" 2>nul

:: Move files to their categories
for %%f in (%folderpath%\*) do (
    if "%%~xf"==".txt" move "%%f" "%folderpath%\Documents"
    if "%%~xf"==".pdf" move "%%f" "%folderpath%\Documents"
    if "%%~xf"==".docx" move "%%f" "%folderpath%\Documents"
    if "%%~xf"==".jpg" move "%%f" "%folderpath%\Images"
    if "%%~xf"==".png" move "%%f" "%folderpath%\Images"
    if "%%~xf"==".mp4" move "%%f" "%folderpath%\Videos"
    if "%%~xf"==".mp3" move "%%f" "%folderpath%\Music"
    if "%%~xf"==".zip" move "%%f" "%folderpath%\Archives"
    :: Add more extensions as needed
)

echo Organizing complete!
pause
