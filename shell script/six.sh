a=""
t=" "
temp=0
linuxwc=0
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
			if [[ $k  == *.txt ]]
			then	
				temp=0			
				temp=$(cat $k | grep -c "Linux")
				linuxwc=$((linuxwc + temp))
			fi				
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
		myfunc
	else	
		if [[ $j  == *.txt ]]
		then	
			temp=0			
			temp=$(cat $j | grep -c "Linux")
			linuxwc=$((linuxwc + temp)) 
		fi	
	fi
done
echo $linuxwc
