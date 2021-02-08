@echo off
setlocal

echo [91mKilling[0m Cortana

call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /apps /fo csv ^| grep -i Cortana"
call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /svc /fo csv ^| grep -i Cortana"

call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /fo csv /m Windows.Cortana*"

exit /b