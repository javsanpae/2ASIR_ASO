@echo off
:: Escribir el proceso por lotes DIR2TXT.BAT que envíe el contenido 
::del directorio indicado a un archivo de texto, indicando si se debe
:: añadir o reemplazar el contenido previo. 
:: (C:\> DIR2TXT c:\dos archivo.txt a|r) 

:: comprobaciones
if "%3"=="" (
    echo Sintaxis incorrecta.
    goto :eof
)
if not "%3"=="a" (
    if not "%3"=="r" (
        echo Sintaxis incorrecta.
        goto :eof
    )
)

if "%3"=="a" (
    dir %1 >> %2
    echo Contenido agregado correctamente.
    goto :eof 
)

if "%3"=="r" (
    dir %1 > %2
    echo Contenido reemplazado correctamente.
    goto :eof
)
