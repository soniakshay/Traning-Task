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

				temp=0			
				temp=$(cat $k | grep -c "abc")
				if [[ $temp -gt 0 ]]
				then					
					echo $k 
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
			temp=0			
			temp=$(cat $j | grep -c "abc")
			if [[ $temp -gt 0 ]]
			then					
				echo $j 
			fi
			
	fi
done
