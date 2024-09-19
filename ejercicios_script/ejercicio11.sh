#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Error. Introduce dos parámetros"
fi

if [[ -e $2 ]]; then
  echo "Error. El archivo $2 ya existe"
fi
if
  [[ -f $1 ]]; then
  cp $1 $2
else
  echo "Error. Tienes que introducir un archivo ordinario"
fi


