echo "Enter 1st Number";
read no1
echo "Enter 2ns  Number";
read no2

minmax()
{
	if [[ $no1 -gt $no2 ]]
	then
	
		echo $no1 + "is Maximum and " + $no2 + "is minimum"	
	else
	
		echo $no2 + "is Maximum and " + $no1 + "is minimum"	
	fi
}
posnag()
{
	if [[ $no1 -gt 0 ]]
	then
	
		echo $no1 + "is Positive" 	
	else
	
		echo $no1 + "is nagative"	
	fi

	if [[ $no2 -gt 0 ]]
	then
	
		echo $no2 + "is Positive" 	
	else
	
		echo $no2 + "is nagative"	
	fi
}


while [ true ]
do
	echo "1)Addition of Two Number"
	echo "2)Multiplay of Two Number"
	echo "3)Division of Two Number"
	echo "4)Subtraction of Two Number"
	echo "5)Modulo of Two Number"
	echo "6)Find Maximum number and Minimum number"
	echo "7)Find Number is Positive or negative"
	echo "Enter choice"
	read ch
	case $ch in
		1)
			echo "Addition is" +  $(( no1 + no2 ))
		;;
		2)
			echo "Multiplay is" +  $(( no1 * no2 ))
			
		;;
		3)
			echo "Division is" +  $(( no1 / no2 ))
	
		;;
		4)
			echo "Subtraction  is" +  $(( no1 - no2 ))
	
		;;

		5)
			echo "Modulo  is" +  $(( no1 % no2 ))
	
		;;
		6)
			minmax
		;;
		7)
			posnag
		;;
		*)
			echo "Invalid Choice"
		;;
		
		


	esac
done
				
		
		 
	
