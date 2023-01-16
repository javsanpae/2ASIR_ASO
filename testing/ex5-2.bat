@echo off

:: Escribir el proceso por lotes EXISTED.BAT que detecte la existencia o no de un
:: directorio en el disco. // SOLO EN EL DIRECTORIO DE TRABAJO

:: opcion 2: pasarlo como parametro
:: la ejecución sería: 
:: X:\> ex5-2.bat foo 

if "%1"=="" (
    echo La sintaxis no es correcta
    goto :eof
)

if exist %1 (
    echo Tu directorio existe en este directorio!
) else (
    echo Tu directorio no existe en este directorio.
)