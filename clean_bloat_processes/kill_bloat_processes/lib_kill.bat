:: Arg 1 => lib function name
:: Arg 2 => lambda

@echo off
setlocal EnableDelayedExpansion

if [%1]==[] goto end
call :%~1 %2!

:end
endlocal
exit /b %ERRORLEVEL%

:: Arg 1 => lambda
:kill_tasks_as_cvs
    set "func_lambda=%~1!"
	for /f "tokens=2 delims=," %%F in ('%func_lambda%') do taskkill /f /t /pid %%~F
exit /b