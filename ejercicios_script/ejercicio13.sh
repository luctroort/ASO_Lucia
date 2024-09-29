#!/bin/bash

echo "1. Añadir"
echo "2. Buscar"
echo "3. Listar"
echo "4. Ordenar"
echo "5. Borrar"

read -p "Elige una opción: " opcion

case $opcion in
  1)read -p "Introduce el nombre: " nombre
    read -p "Introduce la dirección: " direccion
    read -p "Introduce el teléfono: " tel
    echo "$nombre,$direccion,$tel" >> lista.txt
   ;;
  2) read -p "Introduce el criterio de búsqueda: " criterio
     grep  "$criterio" lista.txt
    ;;
  3) cat lista.txt
    ;;
  4) sort lista.txt -o lista.txt
     cat lista.txt 
   ;;
  5) rm lista.txt
   ;;
esac
