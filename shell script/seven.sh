a=""
t=" "
temp=0
linuxwc=0
if [[ ! -e "Allfile" ]]
then 
	mkdir  Allfile

fi
path="$(pwd)/Allfile"


myfunc()
{	
	cd $a
	
	for k in $( ls | awk '{ print $0 }')	
	do
		
	    	if [[ -d  $k ]];
		then

			a=$k	
			#echo -e  $a '=>'
			myfunc
		else
			
			cp $k $path						
		fi
	done
	cd ..


}

for  j in  $( ls | awk '{ print $0 }')
do
	
	if [[ -d  $j ]];
	then
		a=$j
		#echo -e  $a '=>'  
		if [[ $a != "Allfile" ]]
		then		
			myfunc
		fi
	else	
			
			cp $j $path
	fi
done

