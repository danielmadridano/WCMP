#!/bin/bash

echo "***************************************************************"
echo "********************** Llistat de cotxes **********************"
echo "********************** (model ↓ , any ↓) **********************"

tail -n +3 $1 | sort -t";" -k1,1 -k8,8nr | while read -r linia;
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