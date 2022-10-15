@echo off
for /F %%C in ('mountvol ^| find ":\"') do dir "%%C*.vmem" /b /s /a-d