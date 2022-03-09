#!/usr/bin/bash

name=$1
image=$2


for j in $image 
do 
	
	if docker stats $name &> /dev/null 
	then	docker run -dit --name $name $image &> /dev/null
        	echo "hello $name container sucessfuly created"
	else echo "docker already created"
          fi
 
done

echo "heloo $name container  created"

