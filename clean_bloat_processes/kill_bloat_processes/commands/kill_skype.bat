@echo off
setlocal

echo [91mKilling[0m Skype

call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /apps /fo csv ^| grep -i skype"
call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /svc /fo csv ^| grep -i skype"

exit /b