    
ter=`tty`

for i in *
do
	
ls -l $i > lsl
exec < lsl
c=0
while read line
do
	
 
	for l in $line
	do
		c=`expr $c + 1`
		
		if [ $c -eq 5 ]
		then
			b=$l
		
		elif [ $c -eq 6 ]
		then
			m=$l
		
		
        elif [ $c -eq 7 ]
        then   
                d=$l
		 
		
		elif [ $c -eq 8 ]
		then
              t=$l
         fi 
		 			
	done
	
done
	if [ -d $i ]
	then
		echo  "$m $d $t\t<DIR>\t $b\t  $i"	   
	else
	
		echo  "$m $d $t\t     \t $b\t  $i"	
	fi
exec < $ter	 
done
rm lsl

