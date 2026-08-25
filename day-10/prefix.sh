#!/bin/bash

file=$1

# check if file name is provided
if [ $# -ne 1 ]; then
	echo "Usage: <filename>"
	exit 1
fi

prefix="processed_"
if [ ! -f "$file" ] || [ ! -r "$file" ]; then
	echo "Error: file does not exist or is not readable"
	exit 1
else
	dir=$(dirname "$file")
	base=$(basename "$file")

	newfile="$dir/$prefix$base"

	mv "$file" "$newfile"
	echo "File renamed to : $newfile"
fi
