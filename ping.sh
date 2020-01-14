#!/bin/bash

# Author: github.com/lifeeric
# Web: ?
# Last Edited: Jan 14
# Script to ping to server

# Help Page
case "$1" in
-h | --help) echo "---- Welcom to Ping Script ---- "
             echo
             echo "-e"
                   echo "to execute the code"
             echo
             echo "this shell will help you to find the server Address,"
             echo "if it's valid address, it wouldn't show anything to you"
             echo "if it invalid address you put in, it would show you error message"
             echo 
             echo "Thanks for having this script" 
             exit 0 ;;
-e);;
*)   echo "ping.sh -h || --help for more details";
     exit 0 ;;
esac
# prompt to user for value
read -p "Which server should be pinged: " server_addr

# now check the server address, is it valid, if it's valid, we wouldn't show anything
# if not valid, we would like to show error message
# send 3 request, we don't need infinite 

ping -c3 $server_addr 2>1 > /dev/null || echo "Server is dead!"

exit 0
