#!/bin/bash
read -p "Enter no of lines : " N
start=1
for((m=1; m<=N; m++)) 
do

	for((a=0; a<=N-m; a++)) 
	do
	echo -ne " "; 
	done
	for((s=m; s<m+m; s++)) 
	do

	echo -ne $s; 
	
	done

	for((end=m+m-2; end>=m; end--)) 
	do
	echo -ne $end; 
	done
	

	for((a=0; a<=N-m; a++)) 
	do
	echo -ne " "; 
	done

	echo; 
done
