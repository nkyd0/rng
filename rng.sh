#!/bin/bash

roll_dice() {
    num=$1
    if [ "$num" -lt 1 ]; then
        echo "too small"
    else
        result=$(( (RANDOM % num) + 1 ))
        echo "you rolled a $result (from 1-$num)"
    fi
}

flip_coin() {
    result=$(( RANDOM % 2 ))
    if [ "$result" -eq 0 ]; then
        echo "you got head"
    else
        echo "no head for you todau, tails"
    fi
}

if [ "$1" == "dice" ]; then
    roll_dice "$2"
elif [ "$1" == "flip" ] && [ "$2" == "coin" ]; then
    flip_coin
else
    echo "usage:"
	echo "rng dice (num)"
	echo "rng flip coin"
fi

