@echo off
:: Escribir el proceso por lotes VERPARAM.BAT que muestre en pantalla 
:: el contenido de los parámetros reemplazables que le son enviados.
::  (C:\>VERPARAM a b c d) 

if "%1"=="" (
    echo Error de sintaxis. La sintaxis es "ex11.bat a b c d ..."
    goto :eof
)

:bucle

if "%1"=="" (
    echo Fin del programa.
    goto :eof
)

echo %1
goto :printed


:printed
shift
goto :bucle