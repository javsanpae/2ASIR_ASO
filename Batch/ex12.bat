@echo off
:: Escribir el proceso por lotes PARA2VAR.BAT que almacene 
:: en variables y muestre en pantalla los datos enviados como 
:: parámetros. (C:\>PARA2VAR a 4 d 23 hola donde a es el nombre 
:: de la variable y 4 el valor de la misma
:: (internamente haríamos un set a=4)) 

if "%1"=="" (
    echo Error de sintaxis.
    goto :eof
)

:bucle

if "%2"=="" (
    if "%1"=="" (
        echo Fin del programa.
        goto :eof
    )
    echo "%1" se ha quedado sin valor. Este programa solo funciona con combinaciones pares.
    goto :eof
)

echo %1 = %2
goto :shifting

:shifting
shift
shift
goto :bucle