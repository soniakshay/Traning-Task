echo "Enter 1st Number";
read no1

inc=0
echo "Using While Loop"
while [[ $inc -lt $no1 ]]
do	
	inc=$((inc + 1)) 
	echo $inc

done

echo "Using Until Loop"
inc=0
until [[ $inc -ge $no1 ]]
do	
	inc=$((inc + 1)) 
	echo $inc

done	
		 
echo "Using For Loop"
inc=0
for inc in `seq $no1`
do
	echo $inc
 done
