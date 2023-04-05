#!/bin/bash
# cuenta.sh : Imprime los números de 0 a un valor MAX pasado
# como parámetro
max=$1
cuenta=0
while [ $cuenta -lt $max ]; do
    echo $cuenta
    cuenta=$[cuenta+1]
done