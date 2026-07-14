@echo off
title MulTiTool v1.02 - by Dekoy
call :banner
cd files
call :startup 
goto menu 
::========================================================= 
:: MATRIX STYLE STARTUP 
::========================================================= 
:startup 
cls 
echo. 
echo Initializing MulTiTool... 
ping 127.0.0.1 -n 2 >nul 

echo. 
echo [OK] Loading Kernel... 
ping 127.0.0.1 -n 2 >nul 

echo [OK] Loading System Modules... 
ping 127.0.0.1 -n 2 >nul 

echo [OK] Loading Network Modules... 
ping 127.0.0.1 -n 2 >nul 

echo [OK] Loading User Interface... 
ping 127.0.0.1 -n 2 >nul 

echo [OK] Checking Windows Version... 
ping 127.0.0.1 -n 2 >nul 

echo [OK] Loading Utilities... 
ping 127.0.0.1 -n 2 >nul 

echo. 
echo Press any key to continue... 
pause >nul 

:: Matrix Effect 
for /L %%i in (1,1,35) do ( 
    cls 
    echo. 
    echo %random%%random%%random%%random%%random%%random%%random%%random% 
    echo %random%%random%%random%%random%%random%%random%%random%%random% 
    echo %random%%random%%random%%random%%random%%random%%random%%random% 
    echo %random%%random%%random%%random%%random%%random%%random%%random% 
    echo %random%%random%%random%%random%%random%%random%%random%%random% 
    echo %random%%random%%random%%random%%random%%random%%random%%random% 
    ping 127.0.0.1 -n 1 >nul 
) 

cls 
echo. 
echo =============================================================== 
echo. 
echo                     MulTiTool Successfully Loaded 
echo. 
echo =============================================================== 
ping 127.0.0.1 -n 2 >nul 

exit /b 


::========================================================= 
:: MAIN MENU 
::========================================================= 

:menu 

cls


 :banner
echo.
echo.                              ___  ______    __                   ___      
echo              /'\_/`\         /\_ \/\__  _\__/\ \__               /\_ \     
echo             /\      \  __  __\//\ \/_/\ \/\_\ \ ,_\   ___     ___\//\ \    
echo             \ \ \__\ \/\ \/\ \ \ \ \ \ \ \/\ \ \ \/  / __`\  / __`\\ \ \   
echo              \ \ \_/\ \ \ \_\ \ \_\ \_\ \ \ \ \ \ \_/\ \ \ \/\ \ \ \\_\ \_ 
echo               \ \_\\ \_\ \____/ /\____\\ \_\ \_\ \__\ \____/\ \____//\____\
echo                \/_/ \/_/\/___/  \/____/ \/_/\/_/\/__/\/___/  \/___/ \/____/
echo.


echo  [1] System Information 
echo  [2] Ping a Host 
echo  [3] IP Configuration 
echo  [4] Open Notepad 
echo  [5] Open Command Prompt 
echo  [6] Open PowerShell 
echo  [7] Task Manager 
echo  [8] Exit 
echo.
 
 set /p choice=Select an option:
 
 if "%choice%"=="1" goto systeminfo 
 if "%choice%"=="2" goto pinghost 
 if "%choice%"=="3" goto ipconfig 
 if "%choice%"=="4" goto notepad 
 if "%choice%"=="5" goto cmd 
 if "%choice%"=="6" goto powershell 
 if "%choice%"=="7" goto taskmgr 
 if "%choice%"=="8" exit

echo.

:systeminfo
cls
echo ==========================pinghost=======================
echo.
set /P Host=enter hostname or IP:
echo.
ping %Host%
echo.
pause
goto menu

:ipconfig
cls
echo======================IP Configuration=====================
echo.
ipconfig /all
echo.
pause
goto menu


:Notepad
start Notepad
goto menu


:cmd
start cmd
goto menu


:PowerShell
start PowerShell
goto menu


:taskmgr
start taskmgr
goto menu 