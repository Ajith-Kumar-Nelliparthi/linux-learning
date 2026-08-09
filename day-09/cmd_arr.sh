#!/bin/bash

arr=("$@") # store all cmd line arguments in an array

echo "No of arguments: $#"

echo "Arguments: "
for arg in "${arr[@]}"; do
	echo "$arg"
done
