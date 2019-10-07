#!/bin/bash

#This program will backup all the file in carRentalApp

locationSource=$1
locationDirectory=$2

cp -rf $1 $2
