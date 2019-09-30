#! /bin/bash

#This program will unistall the app

echo "This is App Rental Car uninstallation"

echo "Do you want to uninstall the app? (Y/N)"
read ANS

if ( $ANS == "Y); then
	echo "Process uninstallation"
	cd ../
	rm RentalCarApp 
else
    echo "Quit unintstallation........"
    exit
fi


