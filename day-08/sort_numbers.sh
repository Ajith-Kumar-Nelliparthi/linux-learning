#!/bin/bash

INPUT="numbers.txt"
OUTPUT="sort_numbers.txt"

if [ ! -f "$INPUT" ]; then
	echo "Error: $INPUT file not found."
	exit 1
fi

sort -n "$INPUT" > "$OUTPUT"
echo "Numbers sorted and saved to $OUTPUT file."
