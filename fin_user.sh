#!/bin/bash

PASSWD_FILE=/etc/passwd

read -p "Enter user name:" username

grep "^$username" $PASSWD_FILE > /dev/null

status=$?

if test $status -eq 0
then
	echo "User '$username' found in $PASSWD_FILE file."
else
	echo "User '$username' not found in $PASSWD_FILE file."
fi 
