@echo off

:: 22.Diseña un fichero bat que almacene en un
:: fichero y posteriormente lo visualice,
:: todos los nombres de los ficheros que 
:: comiencen por los dos caracteres que se 
:: introducirán por teclado. La búsqueda se 
:: realizara en el directorio y subdirectorios
:: de una ruta introducida por teclado.

set /p @caracteres="¿Que dos primeros caracteres quieres comprobar? "

set @caracteres=%@caracteres:~0,1%

dir /S "%@caracteres%*" > result22.txt
type result22.txt
:goto eof