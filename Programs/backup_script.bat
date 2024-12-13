@echo off
setlocal enabledelayedexpansion

:: Prompt for source and backup directories
echo Enter the full path of the source folder:
set /p source_folder=

echo Enter the full path of the backup folder:
set /p backup_folder=

:: Check if source folder exists
if not exist "!source_folder!" (
    echo The source folder does not exist. Exiting...
    exit /b
)

:: Check if backup folder exists, create it if necessary
if not exist "!backup_folder!" (
    echo The backup folder does not exist. Creating it...
    mkdir "!backup_folder!"
)

:: Copy files with specific extensions
echo Backing up files...

:: Example: Back up .txt, .jpg, .pdf files
xcopy "!source_folder!\*.txt" "!backup_folder!\" /s /i /y
xcopy "!source_folder!\*.jpg" "!backup_folder!\" /s /i /y
xcopy "!source_folder!\*.pdf" "!backup_folder!\" /s /i /y

echo Backup complete!
pause
