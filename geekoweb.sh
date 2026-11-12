#!/bin/bash

chi() {
choice=$(zenity --list \
  --title="Geeko Web alpha 1.0" \
  --text="Choisissez votre moteur de recherche" \
  --column="Options" \
  "Microsoft Bing" \
  "Google Search" \
  --ok-label="Aller sur Zenity Web" \
  --cancel-label="Quitter")
}
chi

bing() {
b=$(zenity --entry \
  --title="Geeko Web alpha 1.0" \
  --text="Search to Microsoft Bing" \
  --ok-label="Chercher 🔎" \
  --cancel-label="Bing page d'acceuil")

xdg-open "https://www.bing.com/?search=$b"
}

google() {
g=$(zenity --entry\
  --title="Geeko Web alpha 1.0" \
  --text="Search to Google" \
  --ok-label="Chercher 🔎" \
  --cancel-label="Google page d'acceuil")

xdg-open "https://www.google.com/search?q=$g"
}

if [ "$choice" = "Google Search" ]; then
google
elif [ "$choice" = "Microsoft Bing" ]; then
bing
fi

