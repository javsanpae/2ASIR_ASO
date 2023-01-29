@echo off
setlocal enabledelayedexpansion
set caracter=#
for /l %%a in (1, 1, 10) do (
    cls
    echo !caracter!
    echo %%a
    set caracter = !caracter!##
    timeout /T 1 >nul
)
endlocal