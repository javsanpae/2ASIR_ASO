@echo off

cls


set /a contar=%1
set cargando=#

:arriba
echo %contar%
echo %cargando%
set /a contar=%contar%-1
set cargando=%cargando%#
if %contar%==0 goto fin
for /l %%x in (1, 1, 1000000) do rem .
cls
goto arriba

:fin
