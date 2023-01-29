@echo off

:: 18. Crea un fichero bat, que nos permita crear copias de seguridad en 
:: la unidad D, de los archivos de contabilidad, nóminas y facturas. 
:: Tiene que aparecer un menú con las tres opciones y otra para salir. 
:: Al elegir una opción nos tiene que aparecer un mensaje indicándonos 
:: la opción elegida. Sólo salimos con la opción Salir. Crea tres 
:: variables con la ruta de los tres directorios.


set C=C:\contabilidad
set Cbak=E:\contabilidad

set N=C:\nominas
set Nbak=E:\nominas

set F=C:\facturas
set Fbak=E:\facturas

:ask
echo.
choice /C CNFX /M "C para Contabilidad, N para nominas y F para facturas. X para salir "


if %errorlevel%==1 goto C
if %errorlevel%==2 goto N
if %errorlevel%==3 goto F
if %errorlevel%==4 goto fin

:C
echo Copiando contabilidad...
xcopy %C% %Cbak% /E /Y > nul
goto :ask

:N
echo Copiando nominas...
xcopy %N% %Nbak% /E /Y > nul
goto :ask

:F
echo Copiando facturas... 
xcopy %F% %Fbak% /E /Y > nul 
goto :ask

:fin
echo Fin del programa.
goto :eof
