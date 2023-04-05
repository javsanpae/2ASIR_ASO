# 16 Modifica el script cuenta.sh de forma que reciba 3 parámetros 
# (que deberás comprobar), siendo el primero de ellos un texto que usaremos 
# como nombre base, y los dos restantes dos números, el primero menor que el 
# segundo. Dados los siguientes datos ‘result 3 6’, el nuevo cuenta.sh deberá
# crear los subdirectorios result3, result4, y result5. Deberás realizar las
# comprobaciones necesarias para no intentar crear un subdirectorio que ya exista.


if [ $# -lt 3 ] ; then
    echo No hay suficientes parámetros.
    exit 1
fi

if [ $2 -gt $3 ] ; then 
    echo El primer número debe ser menor al segundo.
    exit 1
fi

max=$2

while [ $max -lt $3 ] ; do
    mkdir $1$max
#    echo Directorio $1$max creado
    max=$[max+1]
done

echo Fin del programa. A continuación se listarán las carpetas creadas con el nombre $1
ls -a1 | grep $1

