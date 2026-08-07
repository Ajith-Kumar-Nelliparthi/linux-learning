#!/bin/bash

LOG_FILE="errors.log"

ls -l /nonexistent /etc | tee output.txt 2 >>"$LOG_FILE"

echo "Normal o/p displayed and saved to output.txt"
echo "Errors (if any) logged to $LOG_FILE"
