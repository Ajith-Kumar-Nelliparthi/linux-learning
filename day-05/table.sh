#!/bin/bash

if [ $# -eq 0 ]; then
	echo "give <number> for multiplication table"
fi

num=$1
echo "Multiplication table of '$num' is: "

for i in {1..10}
do
	result=$((i * num))
	echo "$num x $i = $result"
done
