#! /bin/bash


echo Enter Disease Name And Year 
read disease
read year


OLDIFS=$IFS
IFS=","

while read yy cause causeName st deaths rate

do 	

	if [[ $disease == $causeName && $year == $yy ]]
	then
		echo State :$st  Total Deaths :$deaths  Rate :$rate
		
	fi
	

done < $1
IFS=$OLDIFS




