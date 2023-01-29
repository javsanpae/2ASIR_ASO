@echo off
:: Escribir el proceso por lotes EXISTED.BAT que detecte la existencia o no
:: de un directorio en el disco. // SOLO EN EL DIRECTORIO DE TRABAJO


:: opcion 1: pasarlo como input
:: la ejecución sería: 
:: X:\> ex5-1.bat  

set /p search= "¿Como se llama el directorio a buscar en este directorio? "

if exist %search% (
    echo Tu directorio existe en este directorio!
) else (
    echo Tu directorio no existe en este directorio.
)