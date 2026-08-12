#!/bin/bash

unique_array() {
	declare -A seen
	local unique=()

	for item in "$@"; do
		if [[ -z "${seen[$item]}" ]]; then
			unique+=("$item")
			seen[$item]=1
		fi
	done
	echo "${unique[@]}"
}

arr=("1" "2" "3" "1" "6" "3" "6")
echo "Original arr: ${arr[@]}"

uniq_arr=($(unique_array "${arr[@]}"))
echo "Unique arr: ${uniq_arr[@]}"
