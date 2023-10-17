#!/bin/bash

sum=0

for ((i=1000;i<=2000;i++))
do
  if [[ "$i" =~ [01][01][01][01]$ ]]
  then 
    sum=$(($sum+$i))
  fi
done
echo "The sum of numbers between [1000,2000] having digits only from {0,1} is $sum"
