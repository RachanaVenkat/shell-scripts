#!/bin/bash

<< first
num=0
while [[ $num -le 5 ]];
do
	echo "lol"
	num=$num+1
done

first

<< second
num=1
while [[ $num -le 10 ]];
do 
	if [[ $((num % 2)) -eq 0 ]];
	then
		echo $num
	fi
	num=$((num + 1))
done

second

