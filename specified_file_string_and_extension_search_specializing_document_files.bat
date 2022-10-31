@echo off
setlocal enabledelayedexpansion 


set fileext[0]=pdf 
set fileext[1]=doc 
set fileext[2]=txt
set fileext[3]=xls 
set /p input= Type search string: 

for /l %%n in (0,1,3) do ( 
   for /F %%C in ('mountvol ^| find ":"') do dir "%%C*.!fileext[%%n]! " /b /s /a-d | findstr %input%
)