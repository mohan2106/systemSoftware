#!/bin/bash

#Enter n
read -p "Enter number of Fibonacci numbers : " n
x=0 
y=1  

echo "The Fibonacci series is : "

for (( i=0; i<n; i++ )) 
do
	echo -n "$x "
	fn=$((x + y)) 
	x=$y 
	y=$fn 
done
echo