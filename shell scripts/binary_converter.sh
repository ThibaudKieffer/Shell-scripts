#! /bin/bash

# A decimal to binary converter

declare -a bin
nb=$1

for ((i=8 ; i > 1 ; i--)); do

    let bin[i]="$nb & 1"
    let nb="nb >>= 1" 

done

echo ${bin[@]}