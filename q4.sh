#!/bin/bash

IFS=","
read -a array
n="${#array[@]}"
count=1
while ((count!=0))
do
  count=0
  for (( i=0;i<$n-1;i++ ))
  do
    if [[ ${array[$i]} -gt ${array[$i+1]} ]]
    then
        t=${array[$i]}
	      array[$i]=${array[$i+1]}
	      array[$i+1]=$t
 	      count=$count+1
    fi
done
done
echo ${array[*]}
