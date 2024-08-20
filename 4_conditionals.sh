#!/bin/bash

read -p "What is 2*2:" product

read -p "What is your age:" age

if [[ $product == 4  ]];
then
	echo "Correct!"
elif [[ $age -le 5  ]];
then
	echo "You will get better"
else
	echo "Wrong!"
fi
