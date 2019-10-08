#!/bin/bash

#THis file test the first succes criterion, namely,
#A car can be created and stored in the database

#Step1: create a car using the script create
bash ../db/create.sh TXM301 nissan red 9

#Step2: Check that the license file.txt was created
if [ -f ../db/car/"TXM301.txt" ]; then
	echo "test one:a txt file was cretead inside the db folder: passed"
else
	echo "Test 1: Error. File not found"
fi

#Step3: Check that the car was added to the main file
lastline=$( tail -n 1 ../db/maincarfile.txt )
if [ "TXM301 nissan red 9" == "$lastline" ]; then
	echo "Test two: Record was entered correctly: Passed"
else
	echo "Test two: Failed"
fi
