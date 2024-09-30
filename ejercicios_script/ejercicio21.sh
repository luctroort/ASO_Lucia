#!/bin/bash

num=$(( 1+RANDOM % 100 ))


while [[ $intento -ne $num ]]; do
  read -p "Introduce un número " intento
if [[ $intento -eq 0 ]]; then
  echo "Te has rendido"
  exit
fi

if [[ $intento -gt $num ]]; then
  echo "El número es menor"
else
  echo "El número es mayor"
fi
done
 echo "Enhorabuena has acertado"
