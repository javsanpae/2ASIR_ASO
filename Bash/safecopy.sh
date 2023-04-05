case $# in
    2) if [ ! -r $1 ] ; then
            echo No tiene permiso de lectura para el primer archivo
        fi
        if [ -f $2 ] ; then
            if [ -w $2 ] ; then
                echo "$2 existe, sobreeescribir (S/N)? "
                read resp
                case $resp in
                    s|S) cp $1 $2
                         echo Copia efectuada;;
                    *) exit;;
                esac
            else
                echo El archivo destino existe y no tiene permiso de escritura
            fi
        else
            cp $1 $2
            echo Copia efectuada
        fi;;
    *) echo "Formato: safecopy <origen> <destino>";;
esac