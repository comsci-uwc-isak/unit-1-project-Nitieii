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
 I decided that choosing Bash Script would be the best solution for Car Rental App because the user required a simple installation and could use the program easily. Next, I choose terminal to write the program, because the target to       and it has already been on computer so we no need to install it. 
 
### Success Criteria
 These are measurabke outcomes
 1. A car can be created and stored in the database
 1. A car information can be edited
 1. A car can be deleted from the database
 1. The installation is ***simple-> one step process***
 1. A summery (total/average distance traveled)can be generated for a particular car
 1. Trips can be recorded and stored for an existing car.
 1. A basic detabase system is implemented.
 1. A basic backup functionallity is available.
 
Design
---------
![SystemDiagram](Diagram.png)
**Fig. 1** First sketch of the system showing the main input/output components, actions and software requirement.

Development
--------
### 1. Script to install the app
The following script creates the app folder and inside it creates two more folder: database and scripts
#!/bin/bash

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
    if [ $# -eq 4 ]

③ Write to main file with one extra line not erasing other Entries.

④ Create car tip file with license plate.txt

## 3. Development of the function: Summerize

*)Summerize the total km per each car

  ① Read the file and split the text into the array
  
  ② Calculate the sum of the km
  
  ③ Print the total km to the TotalperCar.txt

 *)Summerize the total car and km per month
 
 ① Read all the file in car folder and merge files in merge.txt
 
 ② Read the merge.txt file and split the text into the array
 
 ③ Count the number of car in each month
 
 ④ Calculate the sum of the km
 
 ⑤ Print the number of cars and the total km to TotalPerMonth.txt
 
## 4. Development of the function: Backup

① Input the source location and location you want to backup

② Copy file from source location to backup location
  
Evaluation
-----------

Test1:

First run of the program was unsuccessful because the db foldler was not existent.

Also the create program did not store the license file inside the db folder. Chaging

the line `echo " " > $license` to 'echo " " > db/$liecense.txt'.Solved this issue.


Second run of the program we had one issue: the test file needed to move to the main folder 

```.sh
cd ../
```
This is necessary because the `create.sh` resides in the ain folder whereas the test file is inside the /tests folders..

