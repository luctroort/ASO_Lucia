#!/bin/bash

directorio=$1

echo "Entradas del directorio: $directorio"

for entrada in "$directorio"/*; do
  if [[ -e $entrada ]]; then
    if [[ -d $entrada ]]; then
      tipo="Directorio"
    elif [[ -f $entrada ]]; then
      tipo="Archivo"
    else
      tipo="Otro"
    fi
  echo "$(basename "$entrada") - $tipo"
  contador=$((contador + 1))
  fi
done

echo "Número de entradas: $contador"
