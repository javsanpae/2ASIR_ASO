#!/bin/bash
# var.sh: Programa para entender el uso de variables.

DIR=prueba
mkdir $DIR
cd $DIR
echo ’El nombre del programa es’ $0 >foo
echo ’Ha recibido’ $# ’argumentos’ >>foo
echo ’El primer argumento es’ $1 >>foo
echo ’El segundo argumento es’ $2 >>foo
echo ’El conjunto de argumentos es’ $* >>foo
