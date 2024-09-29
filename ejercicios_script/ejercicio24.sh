#!/bin/bash

directorio=$1

if [[ ! -d $directorio ]]; then
  echo "Error. No es un directorio"
  exit
fi

contador_dir=0
contador_fich=0

for entrada in "$directorio"/*; do
  if [[ -e $entrada ]]; then
    if [[ -d $entrada ]]; then
      contador_dir=$((contador_dir + 1))
    elif [[ -f $entrada ]]; then
      contador_fich=$((contador_fich + 1))
    fi
  fi
done

echo "Número ficheros: $contador_fich"
echo "Número subdirectorios: $contador_dir"
