re='[0-9]+$'
while :
do
    echo "Introduce un número"
    read numero
    if [[ $numero =~ $re ]]; then
        break
    else
        echo "$numero no es un numero"
    fi
done