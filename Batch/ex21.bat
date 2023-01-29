@echo off
:: 21. Crea un fichero bat que nos
::permita crear los directorios que se
::incluyen en un fichero introducido como
::parámetro. Comprobando los posibles errores.


if "%1"=="" (
    echo Formato incorrecto
) 

for /F %%a in (%1) do (
    mkdir %%a
    echo %%a
)