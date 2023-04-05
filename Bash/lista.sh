#!/bin/bash
# lista.sh : Lista archivos de extensiones dadas por el usuario
# Termina cuando se escribe la extensión "fin"
read -p "Teclea una extensión: " ext

while [ $ext != "fin" ]
do
	ls *.$ext
	read -p "Teclea otra extensión: " ext
done

echo "Has finalizado el programa"
