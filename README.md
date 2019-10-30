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
 I decided that choosing Bash Script would be the best solution for Car Rental App because the user required a simple installation and could use the program easily. Next, I choose terminal to write the program, because it has already been on computer so we no need to install it. So the user can use terminal to install and use the program easily and conveniently.
 
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

Fi

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

## 2. Create a new car
The following steps summarize the algorithm to create a new car in the system. 

① Get input from the arguments

② Check number of argurments; if 4 then continue, if not ext 'message'

   if [[ ($# -ne 4) ]]; then
   
    echo "Incorrect input. Please enter Plate, Model, Color, Passengers. Exiting the program... "
	
    exit
   fi

③ Write to main file with one extra line not erasing other Entries.

   echo "$plate $model $color $pp" >> ~/Desktop/CarRentalApp/db/maincarfile.txt

④ Create car tip file with license plate.txt

   echo "" > ~/Desktop/CarRentalApp/db/$plate.txt	
   
## 3. Summerize

  ① Input the name of the car (file=$1)
  
  ② Check if the number of argument =1 
  
  if [ $# -ne 1 ]; then
  
    echo "Enter license plate"
    
    ls
    
    exit
  fi
  
  ③ Calculate the total sum of km of each car
  
  total=0
  
  while read line;
  
  do
  	for km in $line
	
  	do
	
    	(( total=$km+$total ))
	
        break
	
  	done
	
   done < "$file.txt"
  
  ④ Show the total Km of each car
  
  cd ..
  
  cd scripts
  
  bash frame.sh "TOTAL DISTANCE TRAVELED FOR $file was: $total"

 　⑤ Calculate the total sum of all cars (if user enter "all" as argument)
  	
   if [ $file == all ]; then
   
    #Calculating total distance
    
    total=0
    
    #comand read used with while loop will read the file
    
    # chosen of the end of loop done < "file.txt" line by line

   #this will loop throug all the txt files in folder
    
    for f in *.txt;
    
    do
   
   #This if sentance will avoid maincarfile.txt
        if  [[ ($f == "maincarfile.txt") ]];then
            continue
        fi

   while read line;
       do
          #for loop will go throug line word by word
          for km in $line
          do
            (( total=$km+$total ))
            #break will break the loop after first cycle
            break
          done
        done < "$f"
    done
  
 　⑥ Show the total km of all the cars
    cd ..
    cd scripts
    bash frame.sh "TOTAL DISTANCE TRAVELED BY ALL CARS WAS: $total"
    exit	
 
 ## 4. Backup

   ① Input the location that user wants to backup (location=$1)

   ② Check if the user entered just one argument and copy file from source location to backup location

   if [[ $# -ne 1 ]]; then
	echo "Sorry, there was an error with backing up your files."
	exit
	else
  	#we copy database
		cp -a ~/Desktop/RentalCarApp/db $location
		echo "Successfully backed up into $location."
   fi

## 5. Development of the function: Delete car

① Input the name of the car want to delete (plate=$1)

②　Check if the argument provided is correct or not
  
  if [[ ($# -ne 1) ]];then
	echo "Input is wrong, please type Plate again"
  
③ Check if the car file license is exist or not
  
  if [ ! -f "$1.txt" ];then
	echo "The file don't exis. Please try again"

 ④ Delete the $plate.txt 
  
  rm $1.txt
	bash frame.sh "The file was successfully deleted"
	#delete whole line which includes the plate
	sed -i '' "/$1/d" maincarfile.txt
	bash frame.sh "The car information was successfully deleted"

## 6. Development of the function: Record trip
## 7. Development of the function: Edit car
## 8. Development of the function: Uninstall

Evaluation
-----------

**A. Test Create.sh**

1. First run of the program was unsuccessful because the db foldler was not existent.

Also the create program did not store the license file inside the db folder. Chaging

the line `echo " " > $license` to 'echo " " > db/$liecense.txt'.Solved this issue.

2. Second run of the program we had one issue: the test file needed to move to the main folder 

```.sh
cd ../
```

This is necessary because the `create.sh` resides in the ain folder whereas the test file is inside the /tests folders..

3. Third run: we check that the car was added to the main file. The following command is used:

`lastLine=$( tail -n 1 db/maincarfile.txt )
`

This line is read the file maincarfile.txt from the last line (tail), 1 is number of the line we read from the last line. Because the car has just added so we just need to check the last line of the file. 

4. Fourth run: error too many arguments

`if [ "TXM301 nissan red 9" == $lastline ]; then
        echo "Test two: Record was entered correctly: Passed"
else
        echo "Test two: Failed"
fi
`

Error line with the if syntax: too many argument. Because $lastline has space between the words so we have to use " " for $lastline. => "$lastline"

**Summary:** Alpha testing, White box testing and Dynamic testing 

**B. Test Install.sh**

1. First run of the program was unsuccessful because missing ; after the bracket of if syntax

2. Second run if the program was unsuccessful because using -f to find the directory

`
if [[ -f "$1" ]];then
	cd $1
	if [[ -f "/db" && -d "/scripts" ]]
`
**Summary:** Alpha testing, Whitebox testing and Dynamic testing

**C. Test DeleteCar.sh**

1. First run of the program was unsuccessful because the syntax is not correct

`
if -f "$carDelete" "maincarfile.txt";
`
