cuenta=0
for fichero in *
	do
		cuenta=`expr $cuenta + 1`
	done
echo Hay $cuenta ficheros
