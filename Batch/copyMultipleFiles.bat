@echo off

rem Usage: micopia folder file1 file2


set destPath=%1

:obtenerArchivo
shift
if "%1"=="" goto fin
copy %1 %destPath%
goto obtenerArchivo

:fin
rem la variable alDirectorio se deja vacía para limpiar el espacio en memoria.
set alDirectorio=
echo Programa finalizado.