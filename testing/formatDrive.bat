@echo off

if exist e:\ (
	goto yes
) else (
	goto no
)

:yes
	format e:
	:: Si el errorlevel es distinto a 0 (correcto) es porque han habido fallos.
	if not errorlevel 1 (
		echo Se produjo un error durante el formato
		goto final
	) else (
		echo Disco formateado correctamente.
		goto final
	)

:no
	echo El disco no existe.

:final
	echo Fin del programa por lotes.

pause
