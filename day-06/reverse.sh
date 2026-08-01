#!/bin/bash

reverse_string() {
	input=$1
	echo "$input" | rev
}
result=$(reverse_string "Hell0")
echo "Reversed String: $result"
