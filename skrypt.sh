#!/bin/bash
max=$1
licznik=0
while [ $licznik -le $max ];do
    potega=$((2**$licznik))
    lista=()
    for ((i=0; i<potega; i++));do
        lista+=("*")
    done
    echo "${lista[@]}"
    licznik=$((licznik + 1))
done
