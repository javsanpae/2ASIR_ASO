#!/bin/bash
# renombra.sh : cambia la extensión de un tipo de ficheros.
# las extensiones que se pasan como parámetros no incluirán el ‘.’
if [ $# -ne 2 ]; then
	echo "Este programa requiere dos argumentos"
	exit 1
fi

for i in *.$1
do
	nombre=`basename $i $1`
	mv $nombre$1 $nombre$2
done
