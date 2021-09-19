@echo off
:kbot
title Kahoot Raider [KBOT]
color 4
echo [Kahoot Raider KBOT modified by x04000]
echo.
set /p pin=Pin: 
set /p id=QuizID: 
set /p bots=Bots: 
echo.
echo Loading bots...
timeout 2 >nul
echo Watermarking...
timeout 2 >nul
set watermark=Croqueta_
set /a "botscheck=0"
:inf
start python.exe kbot -p %pin% -n %watermark%%random%%random% -i %id%
timeout 1 >nul
set /a "botscheck=%botscheck%+1"
echo Joining bot %botscheck%...
if %botscheck% ==%bots% goto done
goto inf
:done
echo Done!
echo.
echo Kill bots? [y/n]
set /p kill=Option: 
if %kill% ==y taskkill /f /im python.exe & echo Killed!
pause>nul
cls
goto kbot