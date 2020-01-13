#!/bin/bash

# This Script will find your file directory which you don't know about?

# Author: github.com/lifeeric
# Version: 1.0
# Script is used to prompt to back up files and location

# for help
case "$1" in
-h | --help) echo "--------- Welcome to BK Script ------ "
  echo "Parameters for BK --"
  echo ""
  echo "-r "
  echo "    for recursive, like if you want to backup alot of file from directoy"
  echo""
  echo "Thanks"
 exit 0 ;;
*) echo "bk.sh --help for details"; exit 0
esac


# it'll ask for the file name
read -p "Which directory or file do you wanna backup: " file_suffix

# it'll ask for directory where you want to store that file
read -p "Which directory do you wanna store you back up file: " dir_name


# show to user for patience 'cause we're searching for file
echo "Searching in entire directory, please wait ..."

# first check is the directory is available where you want to store data,
# it exists then okay, if not, create directory then
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name


# now find the file which you're lookin' for

find $HOME -path $HOME/$dir_name -prune -o -name "*$file_suffix*" -exec cp $1 {} $HOME/$dir_name \;


# show success message if we're done
echo "Successfully Done!"

exit 0
