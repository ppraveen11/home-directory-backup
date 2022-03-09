#!/usr/bin/bash

user=$(cat user.csv)

for i in $user
do 
	if id $i &> /dev/null
		then echo "user $i already exists"
		else
		      if useradd $i
		      then echo "user $i has created"
		      else 
			      echo "user $i , creation failed"
		      fi
		fi
done


