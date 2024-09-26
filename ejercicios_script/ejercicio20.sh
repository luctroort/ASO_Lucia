#!/bin/bash

num=$1

if [[ $((num%2)) -eq 0 ]]; then
  echo "El número no es primo."
else
  echo "El número es primo."
fi
