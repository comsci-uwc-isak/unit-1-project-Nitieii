#!/bin/bash

#This program will delete the car user input
cardelete=$1

#read the file, file the string and delete it
while read -r line
do
  [[ ! $line =~ "$1" ]] && echo "$line"
done <"maincarfile.txt" > o
mv o "maincarfile.txt"

cd car
rm $cardelete.txt
