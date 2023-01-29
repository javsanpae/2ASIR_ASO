@echo off
call:main&goto:EOF

:suma
set /A res=%1 + %2
echo %res%
goto:EOF

:resta
set /A res=%1 - %2
echo %res%
goto:EOF

:multiplica
set /A res=%1 * %2
echo %res%
goto:EOF

:main
set /P arg=Escribe 2 numeros separados por un espacio 
echo %arg%
:: suma
echo su suma es:
call:suma %arg%
:: resta
echo su resta es:
call:resta %arg%
:: mult
echo su producto es:
call:multiplica %arg%

goto:EOF