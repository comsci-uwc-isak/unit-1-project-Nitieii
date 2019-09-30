#! /bin/bash

plate=$1
km=$2
dateout=$3
date=$4

if [ ! -f "$plate.txt" ]; then
	echo "File not found"
fi

echo "$km" >> ~/Desktop/ComSciIsak/carRentalApp/db/$plate.txt 
echo "$dateout" >> ~/Desktop/ComSciIsak/carRentalApp/db/$plate.txt
echo "$datein" >> ~/Desktop/ComSciIsak/carRentalApp/db/$plate.txt
bash frame.sh "Record successfully"
