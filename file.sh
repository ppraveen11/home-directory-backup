#!/usr/bin/bash

user=$(cat user.csv)

for i in $user
do useradd $i
done

echo "hello $0: $user created"
