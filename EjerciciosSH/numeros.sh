#!/bin/bash
numeroMayor=0
numeroMenor=99999999
sumatoria=0
contador=0
if [ $# -eq 0 ]; then
  echo "[+] No se han introducido los parametros necesarios"
else
  for i in `seq 1 1 $#`; do
    if [ \$$i -gt $numeroMayor ]; then
      numeroMayor=$$i
    elif [ \$$i -lt $numeroMenor ]; then
      numeroMenor=$$i 
    fi
    contador=$[$contador+1]
    sumatoria=$[$sumatoria+\$$i]
  done
fi
echo "La media de los paranetros introducidos es: "$[$sumatoria/$contador]
echo "El numero mayor es: "$numeroMayor
echo "El numero menor es: "$numeroMenor

