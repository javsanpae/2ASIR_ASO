NUM=1
while [ $NUM -le 5 ] ; do
	touch file$NUM
	NUM=`expr $NUM+1`
done
