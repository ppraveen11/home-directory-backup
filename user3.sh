#!/usr/bin/bash



read  -p "enter ur user name: " user

if id $user &> /dev/null
then
passwd -l $user
else
	echo "provieded user dosnt exits"

