#!/bin/bash

if [ $# -eq 0 ]; then echo" Usage: <filename>"
	exit 1
fi

file=$1

# check if file exists
if [! -e "$file" ]; then echo "File '$file' does not exist."
	exit 1
fi

# check write permission
if [ -w "$file" ]; then
	echo "You have write permission for '$file' file."
else
	echo "You don't have write permission."
fi
