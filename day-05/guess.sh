#!/bin/bash

target=$(( RANDOM % 10 + 1 ))
read -p "Guess the number btw 1 & 10: " num

while [ "$num" -ne "$target" ]; do
	if [ "$num" -lt 1 ] || [ "$num" -gt 10 ]; then
		echo "Please type a number btw 1 & 10."
	elif [ "$num" -lt "$target" ]; then
		echo "Too low!"
	else
		echo "Too high!"
	fi
	read -p "Try again: " num
done
echo "Correct! You guessed the $target."
