@echo off

if "%1"=="" (
    echo Sintaxis incorrecta.
    goto :eof
)

set total=0

for %%a in (%1\*.txt) do (
    set /a total=1+total
)

echo En este directorio hay %total% ficheros de tipo .txt