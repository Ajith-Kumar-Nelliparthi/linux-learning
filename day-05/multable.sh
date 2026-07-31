#!/bin/bash

for ((i=1; i<=5; i+=1)); do
	for ((j=1; j<=10; j+=1)); do
		echo "$i x $j = $((i * j))"
	done
	echo "-----------"
done
