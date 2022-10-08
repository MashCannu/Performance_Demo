@echo off
chcp 65001 > NUL

start /I /MIN powershell -ExecutionPolicy RemoteSigned -File ./iPerf3_svr_1.ps1

start /I /MIN powershell -ExecutionPolicy RemoteSigned -File ./iPerf3_svr_2.ps1

exit
