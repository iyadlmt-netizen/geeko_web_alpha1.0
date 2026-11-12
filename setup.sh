#!/bin/bash

cmd=$(zenity --entry \
  --title="Installation de Geeko Web" \
  --text="Choisissez la commande que vous voulez utiliser pour ouvrir Geeko Web.")

echo "alias $cmd=./zenity_web.sh" >> ~/.bashrc
if zenity --question --title="Installation de Geeko Web"  --text="Tapez source ~/.bashrc" --ok-label="C'est fait"
then
zenity --info --title="Installation terminée" --text="A présent, vous pouvez tapez $cmd pour ouvrir Geeko Web !"
fi
