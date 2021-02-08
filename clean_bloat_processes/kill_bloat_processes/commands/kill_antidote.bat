@echo off
setlocal

call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /apps /fo csv ^| grep -i antidote"
call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /svc /fo csv ^| grep -i antidote"

exit /b