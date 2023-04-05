
if [ $# -lt 1 ] ; then
    echo No hay suficientes parámetros.
fi

i=0
max=$#
echo Se han pasado $max parámetros al script
echo Los parametros pasados son:
until [ $i -gt $max ] ; do 
    echo $*
    i=$((i+1))
    shift
done