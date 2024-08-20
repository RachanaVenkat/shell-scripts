#!/bin/bash

function is_smart() {
	read -p "what is 2+2, $1:" sum

	read -p "what is your age, $1:" age

	if [[ $sum == 4 ]];
	then
		echo "$1, You are smart"
	elif [[ $age -le 5 ]];
	then 
		echo "$1, You will get better"
	else
		echo "$1, You are dumb"
	fi
}

is_smart bro
