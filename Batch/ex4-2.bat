@echo off
:: 4. Escribir el proceso por 
:: lotes EXISTEF.BAT que detecte la existencia o no
:: de un archivo en el directorio de trabajo

:: opcion 2: pasarlo como parametro
:: la ejecución sería: 
:: X:\> ex4-2.bat foo.bat  

if exist %1 (
    echo Tu archivo existe en este directorio!
) else (
    echo Tu archivo no existe en este directorio.
)
