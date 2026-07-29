#!/bin/bash

read -p "Name: " name
read -p "Age: " age

if [[ $name == "admin" && $age -ge 18 ]]; then
	echo "Access Granted."
else
	echo "Access Denied."
fi
