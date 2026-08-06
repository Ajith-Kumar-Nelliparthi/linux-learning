#!/bin/bash

FILE="simple.txt"
if [ ! -f "$FILE" ]; then
	touch "$FILE"
fi

ls -l | tee $FILE
