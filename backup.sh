#!/usr/bin/bash

ts=$(date +%F) 
while true
do
read  -p "enter ur user name: " user

if [ -z $user ] #testing either user var empty or not 
then
       	echo "username is not provided"
else
  if id $user &> /dev/null  #checking provided user exists or not 
  then
    passwd -l $user         #locking the user 
    homeDir=$(grep ^${user}:  /etc/passwd | cut -d ":" -f 6 )
      echo $homeDiri

    if [ -d $homeDir ]  #testing homedir of user  is exists or not
    then 
	    tar -cf  ${user}-${ts}.tar  $homeDir &> /dev/null  #backuping homedir with timestamp
	    echo "home directory of $user successfully backup"
    fi
    exit 0
   else
	echo "provieded user $user  doesn't exits"
	fi
fi
done

