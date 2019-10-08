#!/bin/bash

#This program will check if the car was deleted or not

carDelete=$1

cd ../
cd db
bash deleteCar.sh $1

if grep -q "$carDelete" "maincarfile.txt" && -f "/Users/m19-018/Desktop/ComSciIsak/carRentalApp/db/car/$carDelete.sh"; then
  echo "Test failed"
else
  echo "Test : passed"
fi
