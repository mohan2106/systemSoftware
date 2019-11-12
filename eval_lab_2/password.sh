#!/bin/bash
check=1

for((;check>0;))
do
echo "Enter password : "
read pass
if [ ${#pass} -ge 8 -a `echo $pass|grep [0-9] -c` -ne 0 -a `echo $pass|grep [a-zA-Z] -c` -ne 0 ]
then
	
	check=0
else
	echo "Weak password try again(Password must contain both num and alphabets)"
fi
done