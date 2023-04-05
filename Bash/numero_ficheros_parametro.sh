if [ $# -eq 1 ]
	then
		echo Hay
		ls -1 $1 | wc -l
		echo archivo\/s en $1
else
	echo Formato correcto: cuenta \<ruta\>
fi 
