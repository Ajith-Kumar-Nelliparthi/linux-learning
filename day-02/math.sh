#!/bin/bash

read -p "Enter first Number: " num1
read -p "Enter Second Number: " num2
echo "Addition of ${num1} and ${num2} is $((num1 + num2))."
echo "Subtraction of ${num1} and ${num2} is $((num1 - num2))"
echo "Multiplication of ${num1} and ${num2} is $((num1 * num2))"

if [ "$num2" -eq 0 ]; then
	echo "Division by zero is not allowed."
else
	echo "Division of ${num1} and ${num2} is $((num1 / num2)) and remainder is $((num1 % num2))."
fi
