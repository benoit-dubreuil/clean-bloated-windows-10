@echo off
setlocal

echo [91mKilling[0m Microsoft Edge

call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /apps /fo csv ^| grep -i MicrosoftEdge"
call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /svc /fo csv ^| grep -i MicrosoftEdge"

call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /fo csv /m EdgeManager.dll"
call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /fo csv /m edgehtml.dll"
call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /fo csv /m chakra.dll"
call lib_kill.bat kill_tasks_as_cvs "tasklist /nh /fo csv /m edgeIso.dll"

exit /b