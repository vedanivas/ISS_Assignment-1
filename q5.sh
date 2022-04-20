#!/bin/bash

read str
rts=$(echo $str | rev) 
echo $rts

echo $rts | tr "[0-9a-zA-ZA]" "[1-9a-zA-ZA]"

read p
n=${#p}
m=$(($n/2))

for ((i=$m-1;i>=0;i--))
    do
	halfRev=$halfRev${p:$i:1}
done
for ((j=$m;j<n;j++))
    do
	secondHalf=$secondHalf${p:$j:1}
done
echo $halfRev$secondHalf
