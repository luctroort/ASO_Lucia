#!/bin/bash

read -p "Introduce un número: " num1
read -p "Introduce otro número: " num2

suma=$((num1 + num2))
media=$((suma / 2))

echo "Media aritmética: $media"
