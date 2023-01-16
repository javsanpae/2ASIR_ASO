@echo off
set /a cuenta = 0

:bucle
set /a cuenta= %cuenta% + 1
echo hola %cuenta%
pause>nul

if %cuenta% == 10 (
	echo nos vemo mostro
	pause>nul
	exit
) else (
	goto :bucle
)