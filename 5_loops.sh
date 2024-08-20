#!/bin/bash

<< 1stway
read -p "how many folder you want to create: " num

for (( i=1; i<=$num; i++));
do
	mkdir "demo_folder_$i"
done
 
can remove these folders using 'rm -r demo_folder*"

1stway

for(( i=$2; i<=$3; i++ ));
do
	mkdir "$1$i"
done
























