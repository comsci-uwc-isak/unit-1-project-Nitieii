#!/bin/bash

#This file will summrize the total km per car

plate=$1
sumKm=0

#read the file and split text into array
array=( $(cat "$plate.txt") )


#calculate the sum of the km
for (( i = 1; i < 1000; i++ ))
do
	for km in ${array[$((3*$i-3))]}
	do
		(( sumKm=$sumKm+$km )) 
	
	done		
done

echo "$plate $sumKm (km)" >> TotalperCar.txt 
echo "Summerize successfully"


