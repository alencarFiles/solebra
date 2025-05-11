@echo off 
title Auto-restarter 
echo :: ========================================= 
echo :: --- otserv restarter --- 
echo :: ========================================= 
echo :: 
:begin 
TheOTXServer_Release_x64.exe

echo :: 
echo :: ========================================= 
echo :: --- reniciando --- 
echo :: ========================================= 
echo :: 
goto begin 

:goto begin