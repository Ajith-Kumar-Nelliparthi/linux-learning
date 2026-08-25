#!/bin/bash

string=$1
if [ -z "$string" ]; then
	echo "Input a String: <string>"
else
	rev_str=$(echo "$string" | rev)
	echo "Original: $string"
	echo "Reversed: $rev_str"

	if [ "$string" = "$rev_str" ]; then
		echo "'$string' is a palindrome."
	else
		echo "'$string' is not a palindrome."
	fi
fi
