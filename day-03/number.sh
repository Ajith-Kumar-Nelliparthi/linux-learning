#!/bin/bash

read -p "Enter a Number: " num
if [ $num -gt 0 ] 
then
	echo "${num} is positive"
elif [ $num -lt 0 ] 
then
	echo "${num} is Negative"
elif [ $num -eq 0 ]
then
	echo "Zero"
else
	echo "Please enter a valid integer."
fi
