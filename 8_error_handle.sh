#!/bin/bash

create_directory(){
	mkdir demo
}

if ! create_directory;
then
	echo "The code is being exited as the directory already exists"
	exit 1
fi

echo "directory created successfully"
# this line will not run when the directory already exists cuz the error will be handled in the above if statement only
