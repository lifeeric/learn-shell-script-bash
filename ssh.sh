#!/bin/bash

# Author: @me
# Web   : 
# Script to prompt for ssh

read -p "Which server do you wanna connect: " server_name
read -p "Which username do you wanna use: " user_name

echo "Loading..."

# now connect with the real ssh
ssh ${user_name}@$server_name
