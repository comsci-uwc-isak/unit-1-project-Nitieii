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
 
 ### Solution proposed
 
 
 ### Success Criteria
 These are measurabke outcomes
 1. A car can be created and stored in the database
 1. A car information can be edited
 1. A car can be deleted from the database
 1. The installation is ***simple-> one step process***
 1. A summery (total/average distance traveled)can be generated for a particular car
 1.Trips can be recorded and stored for an existing car.
 1. A basic detabase system is implemented.
 1. A basic backup functionallity is available.
 
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
echo "moving to $path"
echo $PWD
#Check for correct change directory   

        if [ "$path" != "$PWD" ]; then
                echo "Error creating the folder structure"
        fi

#Create App folder

mkdir RentalCarApp

cd RentalCarApp

mkdir database

mkdir scripts

echo "struture created successfully"

## 2.Development of the function: Create a new car
The following steps summarize the algorithm to create a new car in the system. 
① Get input
② Check number of argurments; if 4 then continue, if not ext 'message'
    'if [ $# -eq 4 ]'
③ Write to main file with one extra line not erasing other Entries.
④ Create car tip file with license plate.txt

Evaluation
-----------



