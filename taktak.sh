#!/bin/bash

# Funkcja rysująca szachownicę
rysuj_szachownice() {
    rozmiar=$1
    for ((i=0; i<rozmiar; i++)); do
        for ((j=0; j<rozmiar; j++)); do
            if (( (i+j) % 2 == 0 )); then
                echo -n "* "
            else
                echo -n "  "
            fi
        done
        echo
    done
}
