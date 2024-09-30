#!/bin/bash

function existe() {
  if [[ -e $1 ]]; then
    echo "El fichero existe"
  else
    echo "No existe"
  fi
}

existe
