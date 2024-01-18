liczba=$((RANDOM))
echo $"Wylosowana liczba: $liczba"
echo $"Podaj liczbę"
read twoja

while (( $twoja != $liczba )); do
  if [[ $twoja -lt $liczba ]]; then
    echo $"Podaj wieksza liczbe"
  fi
  if [[ $twoja -gt $liczba ]]; then
    echo $"Podaj mniejsza liczbe"
  fi
  read twoja
done

echo $"Podales wlasciwa liczbe"
