liczba=$((RANDOM))
echo "Podaj liczbe"
read twoja
echo $liczba
x=32767
y=0
while (( $twoja != $liczba )); do
        twoja=$((RANDOM%$x+$y))
        if [[ $twoja -lt $liczba ]]; then
                echo "Losuje wieksza liczbe niz $twoja"
                y=$twoja
        elif [[ $twoja -gt $liczba ]]; then
                echo "Losuje mniejsza liczbe niz $twoja"
                x=$(($twoja-$y))
        fi
done
