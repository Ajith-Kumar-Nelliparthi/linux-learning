#!/bin/bash

declare -A cap

cap["India"]="Delhi"
cap["Japan"]="Tokyo"
cap["USA"]="W.DC"
cap["China"]="Beijing"

echo "Capital of India: ${cap["India"]}"
echo "Capital of Japan: ${cap["Japan"]}"
echo "Capital of USA: ${cap["USA"]}"
echo "Capital of China: ${cap["China"]}"

echo -e "\nAll countries and their capitals:"
for c in "${!cap[@]}"; do
	echo "$c -> ${cap[$c]}"
done
