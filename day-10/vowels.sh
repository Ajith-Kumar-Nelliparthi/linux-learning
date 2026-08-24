#!/bin/bash

string="$@"
count=0

for (( i=0; i<${#string}; i++ )); do
	char="${string:$i:1}"
	case "$char" in
		[AEIOUaeiou]) ((count++)) ;;
	esac
done

echo "Input: $string"
echo "No of Vowels: $count"
