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

LOG_FILE="./my_script.log"
if [ ! -f "$LOG_FILE" ]; then
	touch "$LOG_FILE" || { echo "Error cannot create log file."; exit 1; }
	chmod 644 "$LOG_FILE"
fi

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
{
	echo "============================="
	echo "		Script Menu"
	echo "============================="
	echo "1. Pring Greeting"
	echo "2. Generate Random Number"
	echo "3. Countdown from Random Number"
	echo "4. Exit"
	echo "=============================="
	read -p "Enter your choice [1-4]: " choice

	case $choice in
		1)
			echo "Starting Greeting..."
			print_greeting
			;;
		2)
			echo "Generating Random Number.."
			rand=$(random_number)
			echo "Random Number is: $rand"
			;;
		3)
			echo "Starting Countdown..."
			MAX_COUNT=$(random_number)
			echo "Counting down from: $MAX_COUNT"
			count_down $MAX_COUNT
			;;
		4)
			echo "Exiting Script. Goodbye!"
			exit 0
			;;
		*)
			echo "Invalid choice. Please select btw 1-4."
			;;
		esac
} | tee -a "$LOG_FILE"
