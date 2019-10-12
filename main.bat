@echo off

REM chcp 65001
title "auto android record screen"

rem 等待时间
set waitTime=30
set recordTime=30


adb devices | findstr "\<device\>"
IF ERRORLEVEL 1 goto NOCONNECTED

rem create direcotry
adb shell mkdir /sdcard/screenrecord_data/ || true

:BEGIN
clear
set nowtime=%date:~0,4%_%date:~5,2%_%date:~8,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%

start /B .\screenbat.bat %nowtime% %recordTime%
echo "wait for next record"
timeout /t %waitTime%
goto BEGIN

goto Finish

:NOCONNECTED
    echo "the adb not connected"

:FINISH
    echo "end"
