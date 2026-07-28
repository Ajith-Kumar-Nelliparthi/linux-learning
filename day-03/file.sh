#!/bin/bash

if [ -e text.sh ]; then
	cat text.sh
else
	echo "Hi" >> text.sh
fi
