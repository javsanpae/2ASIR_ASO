@echo off

:: 17. Crea un fichero bat que visualice, haga una pausa y copie
:: el fichero que le pasamos al directorio raíz, controlando 
:: los posibles errores.

if "%1"=="" (
    echo Sintaxis incorrecta.
    goto :eof
)

if exist %1\* (
    echo Has enviado una carpeta, no un archivo. Revisa la sintaxis.
    goto :eof
)

type %1
echo .
echo El archivo %1 se copiara cuando el script reciba una pulsacion.
pause>nul

copy %1 C:\PRINCI\
echo Archivo copiado con exito.
goto :eof
