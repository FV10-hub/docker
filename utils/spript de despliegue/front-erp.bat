@echo off
cd /d "D:\Sistema\dist\lubricampeon-erp"
start /MIN cmd /c http-server -a localhost -p 4200
exit
