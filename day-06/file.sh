#!/bin/bash

file() {
	name=$1

	# check if file name is provided
	if [ $# -ne 1 ]; then
		echo "usage: <filename>"
		exit 1
	fi

	if [ ! -f "$name" ] || [ ! -r "$name" ]; then
		echo "Error: File does not exist or is not readable."
		exit 1
	else
		lines=$(wc -l < "$name")
		words=$(wc -w < "$name")
		chars=$(wc -c < "$name")
		
		echo "File Name: $name"
		echo "No of Words: $words"
		echo "No of Lines: $lines"
		echo "No of Characters: $chars"
	fi
}

file $1
