#!/usr/bin/bash

image=$@


for j in $image 
do docker run -dit   $j
done

echo "heloo $image container  created"

