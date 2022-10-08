@echo off
chcp 65001 > NUL

start /I /MIN powershell -ExecutionPolicy RemoteSigned -File ./iPerf3_clnt_1.ps1

start /I /MIN powershell -ExecutionPolicy RemoteSigned -File ./iPerf3_clnt_2.ps1

start /MAX C:\"Program Files\tcp monitor"\tcpmon.exe

exit
