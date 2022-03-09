#!/usr/bin/bash

user=$@

for j in $user 
do useradd  $j
done

echo "heloo $user  user created"

