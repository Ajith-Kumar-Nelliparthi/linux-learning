#!/bin/bash

echo "current directory:  "
pwd

for file in *;do
	if [ -f "$file" ]; then
		size=$(stat -c%s "$file")
		echo "File: $file | Size: $size bytes"
	fi
done
