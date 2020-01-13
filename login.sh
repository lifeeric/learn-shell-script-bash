#!/bin/bash

while [ -n "$1" ]
do
  
  # case for options
  case "$1" in
  -u | --username) shift
      paramA="$1"
      echo "Usernam is $paramA" ;;
  -p | --password) shift
      paramB="$1"
      echo "Password is $paramB" ;;
  -e | --email) shift
      paramC="$1"
      echo "E-mail is $paramC" ;;
  --) shift
      break ;;
  *)  echo "Sorry to inconviency"
  esac
shift
done

# para --

num=1

for param in $@
do

  echo "#$num: $param"
  num=$(( num + 1))
done
exit 0
