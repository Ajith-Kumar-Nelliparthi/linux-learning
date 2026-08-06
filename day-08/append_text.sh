#!/bin/bash

FILE="exe1.txt"
if [ ! -f "$FILE" ]; then
	touch "$FILE"
fi

echo "Enter text to append: "
read USER_INPUT

echo "$USER_INPUT" >> "$FILE"
echo "Text appended to $FILE"
