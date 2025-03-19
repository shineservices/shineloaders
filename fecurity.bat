@echo off
setlocal enabledelayedexpansion

:: Define the download URL and the destination path
set "URL=https://www.dropbox.com/scl/fi/kt3g52bqamuf15jlkz18g/Fecurity.zip?rlkey=5o0m8z863bkpl4h8ppzo60qnd&st=kxq05s70&dl=1"
set "DESTINATION=%USERPROFILE%\Downloads\Fecurity.zip"

:: Download the file using curl
echo Downloading the file...
curl -L -o "%DESTINATION%" "%URL%"

:: Check if download is successful
if exist "%DESTINATION%" (
    :: Multi-colored message
    cls
    color 0A
    echo Download Complete, Please extract and open the "Fecurity" Folder and follow instructions.

    :: Change to another color for the folder opening
    color 0F
    start explorer "%USERPROFILE%\Downloads"
) else (
    echo Download failed.
)

pause