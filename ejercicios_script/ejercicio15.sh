#!/bin/bash

i=1

while [[ $i -le 10 ]];do
  resultado=$((i * $1))
  echo "$i x $1 = $resultado"
  i=$((i + 1))
done
