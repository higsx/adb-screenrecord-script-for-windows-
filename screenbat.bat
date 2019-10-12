@echo off

echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"
echo "*****************"

set filename=%1_time_%2.mp4
set recordTime=%2
echo "start record screen %filename%" "the recordtime is " %recordTime%
set mp4Dir=screenrecord_data
echo "the mp4dir is mp4Dir"
set mp4FullPath=/sdcard/%mp4Dir%/%filename%
echo "the fullpath is "%mp4FullPath%



adb shell screenrecord  --bit-rate 5M --time-limit %recordTime% %mp4FullPath%
echo "start copy file %mp4FullPath%"
adb pull %mp4FullPath%

echo "delete file"
REM adb shell rm %mp4FullPath%
clear

exit
