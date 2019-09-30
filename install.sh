#! /bin/bash

#This file creates the structure for the 
#minimal car Rental_App

echo "Starring the installation"
echo "Enter the path where you want to insall. Press Enter"

read path 

#moving to the desired location
cd $path
echo "moving to $path"
echo $PWD
#Check for correct change directory
	if [ "$path" != "$PWD"]; then
		echo "Error creating the folder structure"	
	fi

#Create App folder
mkdir RentalCarApp

cd RentalCarApp

mkdir database
mkdir scripts

echo "struture created successfully"
