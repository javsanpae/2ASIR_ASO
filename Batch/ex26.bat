@echo off

:goto elegir
choice /C PVEX /M "P para programar, V para ver tareas, E para eliminar tarea. X para salir."

if %errorlevel%==1 goto :P
if %errorlevel%==2 goto :V
if %errorlevel%==3 goto :E
if %errorlevel%==4 goto :X

:P
set /p hora="A que hora?"
set /p mins="Y minutos?"
schtasks /ST %hora%:/%mins% /TR shutdown /s    
:goto elegir

:V
schtasks /query
:goto elegir

:E
set /p deleteQuery="Qué tarea quieres borrar?"
schtasks /Delete %deleteQuery%
:goto elegir

:X
echo Fin del programa.
goto :eof