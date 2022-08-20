@echo off
color D
echo =========================================================================
echo Unban's your windows device from Rec Room (v2.2). Made by neptune#1995
echo =========================================================================
:c
set /P c=Do You Want To Run The Unbanner Script 2.2?[Y/N]?
if /I "%c%" EQU "Y" goto :s
if /I "%c%" EQU "N" goto :e
goto :c
:s
color 4
echo =========================================================================
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
timeout /t 1 /nobreak > nul
color A
echo Deletion Complete :)
timeout /t 1 /nobreak > nul
color E
echo =========================================================================
set /P c=Do You Want To Remove Rec Room's Registry Keys?[Y/N]?
echo =========================================================================
if /I "%c%" EQU "Y" goto :g
if /I "%c%" EQU "N" goto :r
:g
color D
echo =========================================================================
echo Removing Rec Room Generic Registry Keys
start nep-generic.reg
timeout /t 1 /nobreak > nul
echo Removing Generic Registry Keys Complete
:r
color E
echo =========================================================================
set /P c=Do You Want To Remove Windows Firewall Rules Keys?[Y/N]?
echo =========================================================================
if /I "%c%" EQU "Y" goto :h
if /I "%c%" EQU "N" goto :i
echo Removing Rec Room Generic Registry Keys
start d-ag-key.reg
timeout /t 1 /nobreak > nul
echo Unban Complete
:h
color D
echo =========================================================================
echo Removing Windows Firewall Rules Registry Keys
start nep-firewallrules.reg
timeout /t 1 /nobreak > nul
echo Removing Windows Firewall Rules Registry Keys Complete
:i
color E
echo =========================================================================
set /P c=Do You Want To Open Monotone Folder?[Y/N]?
echo =========================================================================
if /I "%c%" EQU "Y" goto :m
if /I "%c%" EQU "N" goto :e
goto :m
:m
color D
echo =========================================================================
echo Starting Monotone HWID Spoofer
:: why doesn't this work monotone can suck my balls wtf is this absolute bs fuck this shit
::SET __COMPAT_LAYER=RunAsInvoker & START "" "Monotone\Monotone.exe"
%SystemRoot%\explorer.exe "Monotone"
echo Monotone Folder has been opened please run Monotone.exe
:e
color 5
echo =========================================================================
echo Closing Script In 5 seconds.
timeout /t 5 /nobreak > nul
goto :p
:p
stop