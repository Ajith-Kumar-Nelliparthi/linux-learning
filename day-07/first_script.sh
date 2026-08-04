#!/bin/bash

# Script: first_script.sh
# Description: This script demonstrates basic bash scripting concepts.
# Author: Friday
# Date: 2026-08-04

GREETING="Hello, World!"
MAX_COUNT=5

# Functions
print_greeting() {
	echo "$GREETING"
}

count_down() {
	local count=$1
	while [ $count -gt 0 ]; do
		echo $count
		count=$((count - 1))
		sleep 1
	done
	echo "Blast off!"
}

echo "Starting the Script.."
print_greeting

echo "Counting down from $MAX_COUNT"
count_down $MAX_COUNT

echo "Script execution completed."
