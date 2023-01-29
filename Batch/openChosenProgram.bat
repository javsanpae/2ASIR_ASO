@echo off

:begin
cls
choice /C CNX /T 10 /D X /N /M "Choose C for Calculator or N for Notepad. If not, choose X for Exit."

	:: si usamos la sintaxis propia de errorlevel nos comparará si es menor o igual, por lo que 
	:: tendremos que ponerlo de forma decreciente.
if errorlevel 3 goto X
if errorlevel 2 goto N
if errorlevel 1 goto C



	:: sin embargo podemos ponerlo más "bonito":
	:: if %errorlevel% == 1 goto C
	:: if %errorlevel% == 2 goto N
	:: if %errorlevel% == 3 goto X

:X
exit

:N
start notepad.exe
goto begin

:C
start calc.exe
goto begin
