#!/bin/bash

books=("DC" "AC" "ML" "DL" "AI")
for book in "${books[@]}"; do
	echo "$book"
done

for ((i=0; i<${#books[@]}; i++)); do
	echo "Index $i: ${books[i]}"
done
