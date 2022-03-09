#!/usr/bin/bash

name=$1
image=$2


for j in $image 
do docker run -dit --name $name $image 
done

echo "heloo $name container  created"

