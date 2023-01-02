@echo off
color 9
echo ======================================================================================
echo Rec Room Data Cleaner v3.1 (fast edition) Made by neptune#1995
echo ======================================================================================
echo This script attempts to clean all of Rec Room's data from your computer.
echo Run this without administrator cause file paths will mess up.
echo Credit to https://github.com/sr2echa/Monotone-HWID-Spoofer for Monotone.
echo ======================================================================================
echo Deleting Rec Room Local Low
rmdir /s /q "C:\Users\%USERNAME%\AppData\LocalLow\Against Gravity"
echo Deleting Rec Room's Temp Files
rmdir /s /q "%LocalAppData%\Temp\RecRoom
rmdir /s /q "%LocalAppData%\Temp\Against Gravity"
echo Deleting Rec Room's Microsoft Files
del /s /q %AppData%\Microsoft\Windows\Recent\RecRoom.lnk
del /s /q "%AppData%\Microsoft\Windows\Start Menu\Programs\Steam\Rec Room.url"
echo Completed File Deletion
timeout /t 1 /nobreak > nul
echo ======================================================================================
echo Removing Rec Room's Registry Keys
%windir%\system32\reg.exe import noRR.reg
echo Completed Registery Key Removal
echo ======================================================================================
echo Launching Monotone HWID Spoofer (https://github.com/sr2echa/Monotone-HWID-Spoofer)
start /d "%cd%\Monotone" Monotone.exe
echo ======================================================================================
echo Completed Monotone Launch
echo ======================================================================================
echo Closing Script In 5 seconds.
timeout /t 1 /nobreak > nul
echo Closing Script In 4 seconds.
timeout /t 1 /nobreak > nul
echo Closing Script In 3 seconds.
timeout /t 1 /nobreak > nul
echo Closing Script In 2 seconds.
timeout /t 1 /nobreak > nul
echo Closing Script In 1 second.
timeout /t 1 /nobreak > nul
stop
