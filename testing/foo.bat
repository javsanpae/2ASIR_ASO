@echo off
call:funcion 1 2 3
call:funcion %*
goto:EOF
:funcion
echo Estoy en: %~nx0-^>%0 %*