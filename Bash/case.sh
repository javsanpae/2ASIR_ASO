#!/bin/bash

if [ $# -lt 2 ] ; then
    echo No hay suficientes parámetros
    exit 1
elif [ $# -gt 2 ] ; then
    echo Hay demasiados parámetros
    exit 1
fi

case $1 in
    -p|-P)
        cat "$2" | less;;
    -v|-V)
        cat "$2";;
    *)
        echo Modificador no válido;;
esac