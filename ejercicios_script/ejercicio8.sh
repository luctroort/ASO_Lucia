#!/bin/bash

num1=0
num2=0

read -p "Introduce un número: " num1
read -p "Introduce otro número: " num2

if [[ num1 -eq num2 ]]; then
  echo "Los números son iguales"
elif [[ num1 -gt num2 ]]; then
  echo "El número 1 es mayor"
else
  echo "El número 2 es mayor"
fi
