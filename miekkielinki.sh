#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Sposób użycia: $0 <katalog>"
    exit 1
fi

katalog="$1"

declare -A linki

function sprawdz_linki() {
    local plik="$1"
    local sciezka="$2"
    
    if [ -L "$plik" ]; then
        cel=$(readlink "$plik")
        nowa_sciezka="${sciezka}${plik} -> ${cel}"

        if [ -n "${linki[$cel]}" ]; then
            echo "Zapętlenie: ${nowa_sciezka}"
            echo "Długość zapętlenia: ${linki[$cel]}"
            exit 0
        fi

        linki["$plik"]="$nowa_sciezka"

        sprawdz_linki "$cel" "$nowa_sciezka -> "
    fi
}

for plik in "$katalog"/*; do
    sprawdz_linki "$plik" ""
done

echo "Brak zapętleń w linkowaniu miękkim."
