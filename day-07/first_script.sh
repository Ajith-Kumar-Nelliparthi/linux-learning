#!/bin/bash

# Script: first_script.sh
# Description: This script demonstrates basic bash scripting concepts.
# Author: Friday
# Date: 2026-08-04

Name=$1
GREETING="Hello, $1"

# Functions
print_greeting() {
	echo "$GREETING"
}

random_number() {
	echo $(( RANDOM % 10 + 1 ))
}

count_down() {
	local count=$1
	if [ $count -lt 0 ]; then
	       echo " Input Positive Integers only"
	       return 1
	fi

	while [ $count -gt 0 ]; do
		echo $count
		count=$((count - 1))
		sleep 1
	done
	echo "Blast off!"
}
MAX_COUNT=$(random_number)
echo "Starting the Script.."
print_greeting $1

echo "Counting down from $MAX_COUNT"
count_down $MAX_COUNT

echo "Script execution completed."
