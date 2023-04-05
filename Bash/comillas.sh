#!/bin/bash
# comillas.sh
x=5
echo "Utilizando comillas dobles, el valor de x es $x"
echo 'Utilizando apostrofes, el valor de x es $x'

# se usan los backticks (``) para usar la salida del comando que se ejecute dentro
echo "Estamos en `pwd`"

# tambien podemos usar parentesis 
echo "Estamos en $(pwd)"
