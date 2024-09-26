#!/bin/bash

num=34


while [[ $intento -ne $num ]]; do
  read -p "Introduce un número " intento
if [[ $intento -eq 0 ]]; then
  echo "Te has rendido"
  exit
fi

if [[ $intento -gt $num ]]; then
  echo "El número es mayor que el que hay que adivinar."
else
  echo "El número es menor que el que hay que adivinar."
fi
done
 echo "Enhorabuena has acertado"
