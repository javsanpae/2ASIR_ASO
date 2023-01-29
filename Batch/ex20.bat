@echo off

:: Crea un fichero bat para mostrar “Se va a visualizar
:: el fichero” junto  al nombre del fichero y a continuación
:: muestre el contenido del fichero. Esta operación de
:: debe realizar con todo el contenido del directorio.
:: (Utilizar comando FOR)

for %%f in (*) do (
    echo.
    echo - Se va a visualizar el fichero %%f. Pulse un boton para continuar.
    pause>nul
    type %%f
)

