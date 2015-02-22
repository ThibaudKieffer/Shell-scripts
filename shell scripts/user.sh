#! /bin/bash

# Look if a user exists and give the UID of the user.

utilisateur=""

function saisir {
    echo -n "Entrez le nom d'un utilisateur : " 
    read -r utilisateur
}

function verifutil () {
if grep "^$1:" /etc/passwd > /dev/null; then
  echo "L'utilisateur existe"
else
  echo "L'utilisateur n'existe pas"
fi
}

function UID (){
echo "L'UID de l'utilisateur $1 est `grep $1 /etc/passwd | cut -d: -f3$uid`"
}

echo "1 - Vérifier l'existence d'un utilisateur"
echo "2 - Connaître l'UID d'un utilisateur"
echo "q - quitter"

read -r choix

if [ "$choix" -eq "1" ]; then
    saisir
    verifutil $utilisateur

elif [ "$choix" -eq "2" ]; then
    saisir
    verifutil $utilisateur
    UID $utilisateur

elif [ "$choix" -eq "q" ]; then
    exit 0

fi
