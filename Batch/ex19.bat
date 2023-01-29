@echo off

:: 19. Crea un fichero bat tal que si el primer parámetro reemplazable es una ‘V’ 
:: visualice el fichero que se ha introducido como segundo parámetro, y 
:: si es una ‘B’ lo borre; en cada uno de los casos ha de aparecer en
:: pantalla un mensaje indicando lo que va a ocurrir.

if "%2"=="" (
    echo Sintaxis incorrecta.
    goto :eof
)

if not "%1"=="V" (
    if not "%1"=="B" (
        echo Sintaxis incorrecta. Debe poner V o B.
        goto :eof
    )
)

if not exist %2 (
    echo El fichero no existe.
    goto :eof
)

if exist %2\* (
    echo Has pasado una carpeta. Por favor, pase un fichero.
    goto :eof
)

if "%1"=="V" (
    echo El fichero va a ser visualizado. Pulse una tecla para continuar.
    pause>nul
    echo.
    type %2
    echo.
    echo Fichero visualizado correctamente.
    goto :eof
)

if "%1"=="B" (
    echo El fichero va a ser destruido. Pulse una tecla para continuar.
    pause>nul
    del /Q /F %2 > nul
    echo.
    echo Fichero destruido correctamente.
    goto :eof
)
