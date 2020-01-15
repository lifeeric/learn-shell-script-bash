#!/bin/bash

# Author : @you
# web    : f
# Script to prompt for ssh connection
# Last Edited: July 

read -p "Which server do you want to cennect: " server_addr
read -p "Which username do you want to use: " username
ssh ${username}@$server_addr
