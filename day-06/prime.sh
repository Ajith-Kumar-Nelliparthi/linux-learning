#!/bin/bash

prime() {
    num=$1
    if [ $num -lt 2 ]; then
        echo "Give number greater than 1"
        return
    fi

    # Check divisibility
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            echo "$num is not a Prime Number"
            return
        fi
    done

    echo "$num is a Prime Number"
}

# Call the function with the first argument
prime $1
