#!/bin/bash

num1=0

num2=1

n_liczba=$1

for (( i=0; i<=$n_liczba; i++ ))
do
	echo $num1
	liczba=$num1
	num1=$num2
	num2=$(($liczba+$num2))
done


