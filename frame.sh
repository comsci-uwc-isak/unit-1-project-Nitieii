#!/bin/bash/

word=$1
for (( i = 0; i < 100; i++ ))
do
	echo -n "x"
done

for (( i = 1; i < 5; i++ ))
do
	echo -n "x"
		for (( k = 0; k < 99; k++ ))
		do
			echo -n " "		
		done
        if [ $i -eq 3 ]; then
		echo "x"
		length=${#word}
		a=$(((98-$length)/2))
			for (( q = 0; q < $a; q++ ))
			do
				echo -n  " "
			done
		echo "$1"
			for (( r = 0; r < $a; r++ ))
			do
				echo -n " "
			done
	fi
	echo "x"
	
done

for (( i = 0; i < 101; i++ ))
do 	
	echo -n "x"
done



