@echo off
setlocal

for /r %%f in (./commands/*.bat) do call ./commands/%%~nxf

exit /b