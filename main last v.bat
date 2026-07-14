@echo off
title MulTiTool v1.0 - by Dekoy
color 0B
mode con: cols=90 lines=32

call :startup
goto main


:startup
cls
echo.
echo ======================================================
echo                  MULTOOL BOOT SYSTEM
echo ======================================================
echo.
echo Loading Core Modules...
ping localhost -n 2 >nul

echo Loading Network Modules...
ping localhost -n 2 >nul

echo Loading System Modules...
ping localhost -n 2 >nul

echo Loading User Interface...
ping localhost -n 2 >nul

cls
echo.
echo              ███╗   ███╗██╗   ██╗██╗████████╗██╗████████╗ █████╗ ████
echo              ████╗ ████║██║   ██║██║╚══██╔══╝██║╚══██╔═ ██╔════██╔═══██╗██║
echo              ██╔████╔██║██║   ██║██║   ██║   ██║   ██║  ██║    ██║   ██║██║
echo              ██║╚██╔╝██║╚██╗ ██╔╝██║   ██║   ██║   ██║  ██║    ██║   ██║██║
echo              ██║ ╚═╝ ██║ ╚████╔╝ ██║   ██║   ██║   ██║ ╗╚██████╔╝████╔╝███████╗
echo              ╚═╝     ╚═╝  ╚═══╝  ╚═╝   ╚═╝   ╚═╝   ╚═╝╚═══════╝ ╚═════╝  ╚═════╝ 
echo.
echo              MulTiTool Online
ping localhost -n 2 >nul
exit /b



:main
cls

echo ======================================================
echo                 MUL Ti TOOL v1.0
echo                    by Dekoy
echo ======================================================
echo.

echo ------------------------------------------------------
echo [1] Network Tools
echo [2] System Tools
echo [3] File Tools
echo [4] Utilities
echo [5] Settings
echo [6] About
echo [7] Exit
echo ------------------------------------------------------
echo.

set /p choice=Select option: 

if "%choice%"=="1" goto network
if "%choice%"=="2" goto system
if "%choice%"=="3" goto files
if "%choice%"=="4" goto utilities
if "%choice%"=="5" goto settings
if "%choice%"=="6" goto about
if "%choice%"=="7" exit

goto main

:network
cls

echo ======================================================
echo                 NETWORK TOOLS
echo ======================================================

echo.
echo [1] Ping Host
echo [2] IP Configuration
echo [3] DNS Lookup
echo [4] Traceroute
echo [5] Netstat
echo [6] Flush DNS
echo [7] Back
echo.

set /p choice=Select option:

if "%choice%"=="1" goto pingtool
if "%choice%"=="2" goto iptool
if "%choice%"=="3" goto dnstool
if "%choice%"=="4" goto tracerttool
if "%choice%"=="5" goto netstattool
if "%choice%"=="6" goto flushdns
if "%choice%"=="7" goto main

goto network



:pingtool
cls
set /p host=Enter host:
ping %host%
pause
goto network



:iptool
cls
ipconfig /all
pause
goto network



:dnstool
cls
set /p host=Enter domain:
nslookup %host%
pause
goto network



:tracerttool
cls
set /p host=Enter host:
tracert %host%
pause
goto network



:netstattool
cls
netstat -ano
pause
goto network



:flushdns
cls
ipconfig /flushdns
pause
goto network

:system
cls

echo ======================================================
echo                  SYSTEM TOOLS
echo ======================================================

echo.
echo [1] System Information
echo [2] Running Processes
echo [3] Task Manager
echo [4] Device Manager
echo [5] Services
echo [6] Disk Management
echo [7] Windows Version
echo [8] Back
echo.

set /p choice=Select option:

if "%choice%"=="1" goto sysinfo
if "%choice%"=="2" goto processes
if "%choice%"=="3" goto taskmanager
if "%choice%"=="4" goto devicemanager
if "%choice%"=="5" goto services
if "%choice%"=="6" goto diskmanager
if "%choice%"=="7" goto winver
if "%choice%"=="8" goto main

goto system



:sysinfo
cls
systeminfo
pause
goto system



:processes
cls
tasklist
pause
goto system



:taskmanager
start taskmgr
goto system



:devicemanager
start devmgmt.msc
goto system



:services
start services.msc
goto system



:diskmanager
start diskmgmt.msc
goto system



:winver
start winver
goto system





:files
cls

echo ======================================================
echo                   FILE TOOLS
echo ======================================================

echo.
echo [1] Open File Explorer
echo [2] Open Desktop
echo [3] Open Downloads
echo [4] Create Folder
echo [5] Search Files
echo [6] Back
echo.

set /p choice=Select option:

if "%choice%"=="1" start explorer & goto files
if "%choice%"=="2" start %USERPROFILE%\Desktop & goto files
if "%choice%"=="3" start %USERPROFILE%\Downloads & goto files
if "%choice%"=="4" goto createfolder
if "%choice%"=="5" goto searchfiles
if "%choice%"=="6" goto main

goto files



:createfolder
cls
set /p folder=Folder name:
mkdir "%folder%"
echo Folder created.
pause
goto files



:searchfiles
cls
set /p file=File name:
dir C:\%file% /s
pause
goto files





:utilities
cls

echo ======================================================
echo                   UTILITIES
echo ======================================================

echo.
echo [1] Notepad
echo [2] Calculator
echo [3] Command Prompt
echo [4] PowerShell
echo [5] Control Panel
echo [6] Character Map
echo [7] Back
echo.

set /p choice=Select option:

if "%choice%"=="1" start notepad & goto utilities
if "%choice%"=="2" start calc & goto utilities
if "%choice%"=="3" start cmd & goto utilities
if "%choice%"=="4" start powershell & goto utilities
if "%choice%"=="5" start control & goto utilities
if "%choice%"=="6" start charmap & goto utilities
if "%choice%"=="7" goto main

goto utilities

:settings
cls

echo ======================================================
echo                   SETTINGS
echo ======================================================

echo.
echo [1] Green Theme
echo [2] Blue Theme
echo [3] Red Theme
echo [4] White Theme
echo [5] Reset Theme
echo [6] Back
echo.

set /p choice=Select option:

if "%choice%"=="1" color 0A
if "%choice%"=="2" color 09
if "%choice%"=="3" color 0C
if "%choice%"=="4" color 07
if "%choice%"=="5" color 0A
if "%choice%"=="6" goto main

goto settings





:about
cls

echo ======================================================
echo                     ABOUT
echo ======================================================

echo.
echo              MulTiTool v1.0
echo.
echo              Created by Dekoy
echo.
echo  A Windows batch administration toolkit.
echo.
echo  Features:
echo  - Network tools
echo  - System tools
echo  - File utilities
echo  - Windows shortcuts
echo  - Custom themes
echo.

pause
goto main
