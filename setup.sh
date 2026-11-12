#!/bin/bash

cmd=$(zenity --entry \
  --title="Installation de Geeko Web" \
  --text="Choisissez la commande que vous voulez utiliser pour ouvrir Geeko Web.")

echo "alias $cmd=geeko_web_alpha1.0\./zenity_web.sh" >> home\~/.bashrc
if zenity --question --title="Installation de Geeko Web"  --text="Finissez l'installation et tapez source home\~/.bashrc" --ok-label=""
then
zenity --info --title="Installation terminée" --text="Fermez cette pop-up, tapez source \home\~/.bashrc et à présent, vous pouvez tapez $cmd pour ouvrir Geeko Web !"
fi
