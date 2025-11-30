#!/bin/bash

Opcio-Menu() {
  echo "---------------------------------------------------------"
  echo "Where Cars Meet Passion (Base de Dades)"
  echo "---------------------------------------------------------"
  echo "1. La nostra selecció de vehicles."
  echo "2. Troba el teu cotxe."
  echo "3. Demostra que ets un expert."
  echo "4. Sistema gestor de base de dades."
  echo "0. Sortir."
  echo "Selecciona una opció:"
}

enDesenvolupament() {
  clear
  echo "En desenvolupament"
  read -n 1 -s
  clear
}

opcioNoValida() {
  clear
  echo "Error: Opció no vàlida"
  sleep 2
  clear
}

Sortida() {
  clear
  echo "Gràcies per visitar Where Cars Meet Pasion"
  exit
}

while true;
do
  Opcio-Menu
  read opcio
  case $opcio in
    1) enDesenvolupament;;
    2) enDesenvolupament;;
    3) enDesenvolupament;;
    4) enDesenvolupament;;
    0) Sortida;;
    *) opcioNoValida;;
  esac
done