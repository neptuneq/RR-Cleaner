@echo off
color 9
echo ======================================================================================
echo Rec Room Data Cleaner v3 (fast edition) Made by neptune#1995
echo ======================================================================================
echo This script attempts to clean all of Rec Room's data from your computer.
echo Run this without administrator cause file paths will mess up.
echo Credit to https://github.com/sr2echa/Monotone-HWID-Spoofer for Monotone.
echo ======================================================================================
echo Deleting Rec Room Local Low
rmdir /s /q "C:\Users\%USERNAME%\AppData\LocalLow\Against Gravity"
echo Deleting Rec Room's Temp Files
rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\RecRoom"
echo Deleting Rec Room's Microsoft Files
rmdir /s /q "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Recent\RecRoom.lnk"
rmdir /s /q "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Rec Room.url"
echo Deleting Rec Room's Windows Files
rmdir /s /q "C:\Windows\Prefetch\RECROOM.EXE-BEC42EED.pf"
rmdir /s /q "C:\Windows\Prefetch\RECROOM_RELEASE.EXE-35556F3D.pf"
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