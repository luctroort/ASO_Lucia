#!/bin/bash


suma=0
num=1

while [[ $num -ne 0 ]];do
  read -p "Introduce un número: " num
  suma=$((suma + num))
  echo $suma
done
