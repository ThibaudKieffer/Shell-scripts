#! /bin/bash

# a basic calculator script

function calcul () {
resultat=$(($1 $2 $3))
echo  $1 $2 $3 = $resultat

}

calcul $1 $2 $3

