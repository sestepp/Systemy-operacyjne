#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Sposób użycia: $0 <katalog>"
    exit 1
fi

katalog="$1"

find "$katalog" -type f -links +1 -printf "Plik %p ma %n dowiązań.\n"
