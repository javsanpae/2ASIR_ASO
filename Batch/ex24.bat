@echo off

:elegir
choice /C CAEX /N /M "C, A o E? "

if %errorlevel%==1 goto C 
if %errorlevel%==2 goto A
if %errorlevel%==3 goto E
if %errorlevel%==4 goto X

:C 
net user
goto :elegir

:A
set /p user="Como se llama el usuario que quieres crear?"
set /p pass="Y su contraseña?"
net user %user% %pass% /add
:goto elegir

:E
set /p user="Que usuario quieres borrar?"
net user %user% /delete 
:goto elegir

:X
echo Fin del programa.
goto :eof
