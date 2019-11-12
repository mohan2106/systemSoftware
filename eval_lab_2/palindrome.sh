#!/bin/bash
if [ $# -eq 0 ]
then
	echo "No number passed, pass number as argument when executing"
else

	num=$1
	numrev=`echo $num | rev`


	if [ $num == $numrev ]
	then
		echo "yes its a palindrome"
	else
		echo "not a palindrome"
	fi
fi