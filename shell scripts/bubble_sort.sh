#! /bin/bash

# Sort set values 

declare -a tab
valeurs=${@}
swap=0
taille=`echo $#`

for ((i=1 ; i<"$#"+1 ; i++)); do
   tab[i]=`echo  \`echo $valeurs\` | cut -d\  -f$i`
done

for ((i=1 ; i<"$taille"+1 ; i++)); do
    for ((j=$i ; j<"$taille"+1 ; j++)); do
        if ((tab[j] > tab[i])); then
   	   swap="${tab[i]}"
	   tab[i]="${tab[j]}"
	   tab[j]="$swap"
        fi
    done
done