@echo off
REM Remu Remu (o^-^)o
REM Ping Script for Zabbix Monitoring by A.Samonte version 2 build 20191113.1140
for /f "tokens=*" %%i in ('ping -n 1 -w 1000 %1') do set cache=%%i
set cache=%cache:~10,5%
set cache=%cache:ms=%
set cache=%cache:ent=%
set cache=%cache:st=%
set cache=%cache:co=%
set cache=%cache:,=%
if "%cache%" == " " (echo 0) else (echo %cache%)