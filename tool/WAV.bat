@echo off
title WAVEファイルに変換

cd /d "%~dp0"
:dlt
if "%~1"=="" goto end
echo %~n1%~x1
"ffmpeg.exe" -y -i %1 -ab 128k -ar 44100 -ac 2 "bgm.wav" 
shift
goto dlt

:end
echo 変換が終了しました
pause
exit
