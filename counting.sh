#bin/bash

echo Hello, what is your name?
read myName

while [ -z ”$myName” ]
	do
	echo Enter a Name
	read myName
done 

while [[ ${#myName} -lt 2 ]] || [[ ${#myName} -gt 15 ]];
	do	
	echo Name must be between 2 and 15 characters
	echo Please enter name again
	read myName
done

while [[ ! $myName=~[^a-zA-Z]+ ]]
	do
	echo That is not a letter
	echo Enter your name!
	read myName
done

echo Hi, $myName

echo Choose a number between 5-100
	read myNum
	echo You entered, $myNum

while [ -z “$myNum” ]
	do
	echo Enter a number
	read myNum
done


re='^[0-9]+$'

if ! [[ $myNum =~ $re ]] ; 
	then
	echo “error: Not a number”; 
fi

while [[ $myNum -lt 5 ]];
	do
	echo “Must be greater than 5!”
	read myNum
done

while [[ $myNum -gt 100 ]];
	do
	echo “Must be under 100!”
	read myNum
done 

counter=0

# if even, start at 0, otherwise start at 1

if ![[ $((myNum %2)) == 0 ]];
	then
	counter=1
else
	counter=0
fi

while [[ $counter -le $myNum ]];
	do
	echo $counter
	let counter=$counter+2;
	sleep 0.2
done

echo "Done!"
