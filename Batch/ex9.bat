@echo off
:: 9. Crea un fichero bat que compruebe si los parámetros
:: pasados son directorios, ficheros o nada.

:: primero preguntar por directorio
:: switch

if "%1"=="" (
    echo Sintaxis incorrecta.
    goto :eof
)

:bucle

if "%1"=="" (
    echo Fin del programa.
    goto :eof
)
if exist %1\* (
    echo "%1" es una carpeta.
    goto :checked
) 
if exist %1 (
    echo "%1" es un archivo.
    goto :checked
)

:: si no pasa por ninguna de las condiciones anteriores se ejecuta esto
echo "%1" no existe.

:checked
shift
goto :bucle