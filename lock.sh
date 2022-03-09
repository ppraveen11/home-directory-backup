#!/usr/bin/bash


while true
do
read  -p "enter ur user name: " user

if [ -z $user ]
then
       	echo "username is not provided"
else
  if id $user &> /dev/null
  then
    passwd -l $user
    homeDir=$(grep ^${user}:  /etc/passwd | cut -d ":" -f 6 )

    echo $homeDir
    if [ -d $homeDir ]
    then echo "$homeDir Dir  is exits"
    fi
    exit 0

   else
	echo "provieded user $user  dosnt exits"
	

    fi
fi
done

