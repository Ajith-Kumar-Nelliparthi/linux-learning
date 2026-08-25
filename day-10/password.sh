#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Usage: $0 <length>"
	exit 1
fi

length=$1

if [ "$length" -lt 4 ]; then
	echo "Password length must be at least 4"
	exit 1
fi

upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lower="abcdefghijklmnopqrstuvwxyz"
numbers="1234567890"
special="!@#$%^&*():;<>{}/?-=+[]"

#pick one from each category
u=${upper:$((RANDOM % ${#upper})):1}
l=${lower:$((RANDOM % ${#lower})):1}
n=${numbers:$((RANDOM % ${#numbers})):1}
s=${special:$((RANDOM % ${#special})):1}

all="$upper$lower$numbers$special"
rest=""
for (( i=4; i<lenght; i++ )); do
	rest="$rest${all:$((RANDOM % ${#all})):1}"
done

password="$u$l$n$s$rest"
password=$(echo "$password" | fold -w1 | shuf | tr -d '\n')

echo "Generated password: $password"
