#!/bin/bash

params=($*)

liczba_param=$#

for (( i=$liczba_param-1; i>=0; i-- ))
do
	echo "${params[$i]}"
	echo ""
done

