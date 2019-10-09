#!/bin/bash

#This script generates summary for a given car
bash frame.sh "Summar"

car=$1
FILE="$car.txt"
sumkm=0

#Check the number of argument
if [ $# -ne 1 ];then
    echo "Enter a license"
#read the file and calculate the total sum of km
else
    cd ../
    cd db
    if [ -f $car.txt ]; then
      while read line;
      do
        for km in $line
        do
          (( sumkm=$sumkm+$km ))
          break
        done
      done < $FILE
    else
      echo "Car does not exist!"
    fi
fi

#Show result
cd ../scripts/
bash frame.sh "Total distance traveled for $FILE was $sumkm"
exit








