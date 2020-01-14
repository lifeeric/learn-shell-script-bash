#!/bin/bash

# Author: github.com/lifeeric
# Web: ?
# Last Edited: Jan 14
# Script to ping to server

# prompt to user for value
read -p "Which server should be pinged: " server_addr

# now check the server address, is it valid, if it's valid, we wouldn't show anything
# if not valid, we would like to show error message
# send 3 request, we don't need infinite 

ping -c3 $server_addr 2>1 > /dev/null || echo "Server is dead!"

exit 0
