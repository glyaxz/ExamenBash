#!/bin/bash
if [ $# -ne 2 ]; then
  echo "[-] Error: No has introducido los parametros necesarios"
else
 for i in 'seq 1 1 2'; do
    if [ -a $1 ]; then
      if [ -a $2 ]; then
        palabras1=`wc -c $1 | cut -c 1-2`
        palabras2=`wc -c $2 | cut -c 1-2`
        if [ $palabras1 -gt $palabras2 ]; then
          echo "El primer fichero es mas grande que el segundo"
        elif [[ $palabras1 -lt $palabras2 ]]; then
          echo "El primer fichero es mas pequeño que el segundo"
        else
          echo "Ambos parametros son iguales"
        fi 
      else
        echo "[-] El parametro 2 no es un fichero"
      fi
     else
      echo "[-] El parametro 1 no es un fichero"
    fi
  done
fi
