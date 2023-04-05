#!/bin/bash
# copy.sh : copia un archivo
if [ $# -ne 2 ]; then
	echo 'Este programa requiere dos argumentos'
	exit 1
fi

if [ -f $1 ] ; then
	if [ -e $2 ] ; then
		echo $2 'ya existe.'
	else
		cp $1 $2
	fi

elif [ ! -e $1 ] ; then
	echo $1 'no existe.'
else
	echo $1 'no es un archivo regular.'
fi
