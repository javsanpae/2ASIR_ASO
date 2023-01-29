@echo off
:: 4. Escribir el proceso por 
:: lotes EXISTEF.BAT que detecte la existencia o no
:: de un archivo en el directorio de trabajo

:: opcion 1: pasarlo como input
:: la ejecución sería: 
:: X:\> ex4-1.bat  

set /p search= "¿Como se llama el archivo a buscar en este directorio? "

if exist %search% (
    echo Tu archivo existe en este directorio!
) else (
    echo Tu archivo no existe en este directorio.
)