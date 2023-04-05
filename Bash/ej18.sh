
if [ $# -lt 1 ] ; then 
    echo No hay suficientes parámetros.
    exit 1
fi

if [ ! -d `pwd`/.deleted ] ; then
    mkdir `pwd`/.deleted
fi

for i in $*
do
    if [ -e `pwd`/$i ] ; then
        mv `pwd`/$i `pwd`/.deleted/$i
        echo Archivo movido a la papelera.
    elif [ -e `pwd`/.deleted/$i ] ; then 
        mv `pwd`/.deleted/$i `pwd`/$i
        echo Archivo restaurado desde la papelera.
    else
        echo El archivo no existe ni aquí ni en la papelera.
    fi
done
