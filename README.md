![CarRental](logo.png)

Car Rental Minimal App
===========================

A car rental management minimal app in Bash.

Contents
-----
  1. [Planning](#planning)
  1. [Design](#design)
  1. [Development](#development)
  1. [Evalution](#evaluation)

Planning
----------
### Defining the Problem (Topic 1.1.1)
 A car rental office wants to purchase a program that collect basic information about the distance driven for each car. This program should have easy commands to create information about car: Name, model of cars and number of passengers. Furthermore, the user can recored the trip of each car, the day start, end and the kilometer that the car runned.  Also, they can edit the record (add or remove) the information of the car they want. Last but not least, the user can storage the system and backup it in their computer or USB. 
 
Design
---------
![SystemDiagram][IMG_]
**Fig. 1** First sketch of the system showing the main input/output components, actions and software requirement.

Development
--------
### 1. Script to install the app
The following script creates the app folder and inside it creates two more folder: database and scripts

#! /bin/bash

#This file creates the structure for the
#minimal car Rental_App

echo "Starring the installation"
echo "Enter the path where you want to insall. Press Enter"

read path

#moving to the desired location
cd $path

#Create App folder
mkdir RentalCarApp

cd RentalCarApp

mkdir database
mkdir scripts

echo "struture created successfully"

Evaluation
-----------



