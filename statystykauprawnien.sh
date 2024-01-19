#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

directory_path=$1

ls -lR "$directory_path" | awk '{print $1}' | sort | uniq -c | grep -v " 1 " | grep -v "total"
