#!/bin/bash
# p=1
# k=2
# n=3

twoje=$1
komp=$((1 + RANDOM % 3))
if [[ ($twoje == "p" && $komp == 2) || ($twoje == "k" && $komp == 3) || ($twoje == "n" && $komp == 1) ]]; then
    echo "Wygrałeś"
elif [[ ($twoje == "p" && $komp == 3) || ($twoje == "k" && $komp == 1) || ($twoje == "n" && $komp == 2) ]]; then
    echo "Przegrales"
else
    echo "Remis"
fi
