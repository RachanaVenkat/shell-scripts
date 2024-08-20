#!/bin/bash

# '-p' prompts to enter username and reads the input in the var 'username'
read -p "Enter UserName: " username

echo "you entered: $username"

sudo useradd -m $username

echo "New user $username added"
# check if the new user is added by "cat /etc/passwd"
