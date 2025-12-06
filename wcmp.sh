#!/bin/bash

db="${1:-}"

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

Opcio-1() {
  clear
  echo "--------------------------------------------------"
  echo "1 - La nostra selecció de vehicles."
  echo "--------------------------------------------------"
  echo "1 Els nostres cotxes ordenats alfabèticament."
  echo "2 Els nostres cotxes ordenats de menys a més consum (MPG - Miles Per Gallon)."
  echo "3 Els nostres cotxes ordenats de menys acceleració a més (0 to 100 Miles Per Hour)."
  echo "0 Tornar al menú anterior."
  echo "Selecciona una opció:"
  read opcio1
  clear
  case $opcio1 in
    1) ./tarea1-1.sh $db;;
    2) ./tarea1-2.sh $db;;
    3) ./tarea1-3.sh $db;;
  esac
  clear
}

Opcio-2() {
  clear
  echo "------------------------------------------"
  echo "2 - Troba el teu cotxe."
  echo "------------------------------------------"
  echo "1 Mostrar les especificacions d’un cotxe."
  echo "2 Mostrar els cotxes que tenen una acceleració entre un mínim i un màxim."
  echo "3 Mostrar vehicles per zona d’origen."
  echo "4 Tornar al menú anterior."
  read opcio2
  clear
  case $opcio2 in
    1) ./tarea2-1.sh $db;;
    2) ./tarea2-2.sh $db;;
    3) ./tarea2-3.sh $db;;
  esac
  clear
}

while true;
do
  Opcio-Menu
  read opcio
  case $opcio in
    1) Opcio-1;;
    2) enDesenvolupament;;
    3) enDesenvolupament;;
    4) enDesenvolupament;;
    0) Sortida;;
    *) opcioNoValida;;
  esac
done