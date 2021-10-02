@echo off
setlocal
color 0a
title TempClear

:start
echo -------------------------------------------
echo         Made by: Brandon Busickio
echo -------------------------------------------
echo                Version 1.0
echo -------------------------------------------
echo     You are About to Clear Temp Files
echo -------------------------------------------
echo.
set /p Question= ARE YOU SURE (Y/[N]):
goto %Question%

:Y
cd /D %temp%
for /d %%D in (*) do rd /s /q "%%D"
del /f /q *
goto finished
:y
cd /D %temp%
for /d %%D in (*) do rd /s /q "%%D"
del /f /q *
goto finished
:N
Exit
:n
Exit

:finished
cls
echo -------------------------------------------
echo        Temp Files Have Been Cleared
echo -------------------------------------------
echo.
set /p exit= Type 1 to Finish:

if %exit%==1 (
    Exit
)

