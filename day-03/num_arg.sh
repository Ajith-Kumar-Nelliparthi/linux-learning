#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Usage: $0 <number1> <number2>,,"
fi

for num in "$@"; do
	if [[ $num =~ ^-?[0-9]+$ ]]; then
		if [ $num -gt 0 ]; then
			echo "$num is positive"
		elif [ $num -lt 0 ]; then
			echo "$num is negative"
		elif [ $num -eq 0 ]; then
			echo "Number is Zero"
		fi

	else
		echo "Give a valid Integer"
	fi
	echo "----"
done
