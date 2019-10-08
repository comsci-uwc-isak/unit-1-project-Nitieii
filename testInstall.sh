#!/bin/bash

#This program will check the if the install file run well or not


cd ../
cd ../
bash install.sh


if [[ -d "/Users/m19-018/Desktop/ComSciIsak/carRentalApp" && -d "/Users/m19-018/Desktop/ComSciIsak/carRentalApp/db" && -d "/Users/m19-018/Desktop/ComSciIsak/carRentalApp/scripts" ]];then
	   echo "Test the install program: passed"	
else
	echo "Test failed"
fi
