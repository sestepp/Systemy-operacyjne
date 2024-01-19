#!/bin/bash

zakres_x="$1"
zakres_y="$2"
odp=1
licznik=0
poprawne=0
falszywe=0

start=$(date +%s)

while [ $odp -gt 0 ]; do
    x=$((1 + RANDOM % $zakres_x))
    y=$((1 + RANDOM % $zakres_y))
    wynik=$(($x * $y))
    echo "$x * $y = ..."
    echo "Podaj odpowiedz:"
    read odp
    licznik=$((licznik + 1))

    if [ "$wynik" -eq "$odp" ]; then
        poprawne=$((poprawne + 1))
    else
        falszywe=$((falszywe + 1))
    fi
done

koniec=$(date +%s)
czas=$(echo "$koniec - $start" | bc)

echo "Statystyki"
echo "Liczba gier: $licznik"
echo "Poprawne: $poprawne"
echo "Fałszywe: $falszywe"
echo "Czas: $czas s"
