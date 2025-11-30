#!/bin/bash

echo "***************************************************************"
echo "********************** Llistat de cotxes **********************"
echo "****************** (acceleració ↑ , model ↓) **********************"

tail -n +3 $1 | LC_ALL=C sort -t";" -k7,7nr -k1,1 | while read -r linia;
do
  model=$(echo $linia | cut -d";" -f1)
  MPG=$(echo $linia | cut -d";" -f2)
  cilindres=$(echo $linia | cut -d";" -f3)
  cilindrada=$(echo $linia | cut -d";" -f4)
  potencia=$(echo $linia | cut -d";" -f5)
  pes=$(echo $linia | cut -d";" -f6)
  acceleracio=$(echo $linia | cut -d";" -f7)
  any=$(echo $linia | cut -d";" -f8)
  origen=$(echo $linia | cut -d";" -f9)
  echo ""
  echo "** Model: $model"
  echo "MPG: $MPG Nº cilindres: $cilindres Cilindrada: $cilindrada"
  echo "Potència (CV): $potencia Pes: $pes Acceleració (0 a 100 mph): $acceleracio"
  echo "Model de l'any: $any Origen: $origen"
  echo ""
done

echo "**************** PREMI UNA TECLA PER CONTINUAR ****************"
read -n 1 -s