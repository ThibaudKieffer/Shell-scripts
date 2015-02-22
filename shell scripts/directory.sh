#! /bin/bash

# Count the number of elements in a directory

function cpt_elements (){
    if [ -d $1 ]; then
	cd $1
	echo "Le nombre d'éléments dans ce répertoire est de : `ls | wc -w` "
    else
	echo "ce répertoire n'existe pas"
    fi
}

if [ "$#" -ne 0 ]; then
    cpt_elements $1
else
    echo -n "Veuillez entrer un chemin de répertoire : "
    read -r chemin
    cpt_elements $chemin
fi