#! /bin/bash

#This file creates the structure for the 
#minimal car Rental_App

echo "Starring the installation"
cd ~/Desktop
#Create App folder
echo "Creating folders"
mkdir CarRentalApp
cd CarRentalApp
mkdir db
mkdir scripts
mkdir tests


echo "Set up scripts file"
cp -a ~/Downloads/CarRentalAppInstall/scripts/. ~/Desktop/CarRentalApp/scripts
cd scripts
bash frame.sh "Install successfully"
