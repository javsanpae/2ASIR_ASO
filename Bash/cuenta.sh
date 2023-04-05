#!/bin/bash
# cuenta.sh : Cuenta el numero de ficheros .c y .h en un directorio
FICH_SH=`ls *.sh 2>error | wc -w`
FICH_BASH=`ls *.bash 2>error | wc -w`
#echo 'Número de ficheros .sh =' $FICH_SH
#echo 'Número de ficheros .bash =' $FICH_BASH

echo "Número de ficheros .sh = $FICH_SH"
echo "Número de ficheros .bash = $FICH_BASH"
