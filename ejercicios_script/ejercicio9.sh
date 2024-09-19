#!/bin/bash

echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"

read -p "Selecciona una opción: " opcion

read -p "Introduzca un número: " num1
read -p "Introduzca otro número: " num2

case $opcion in
  1)
    suma=$((num1+num2))
    echo $suma
    ;;
  2)
    resta=$((num1-num2))
    echo $resta
    ;;
  3)
    mult=$((num1*num2))
    echo $mult
   ;;
  4)
    div=$((num1/num2))
    echo $div
    ;;
esac
