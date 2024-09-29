#!/bin/bash

num=$1

if [[ $num -lt 2 ]]; then
  echo "No es primo"
  exit
fi

for ((i=2; i*i<=num; i++)); do
  if [[ $((num % i)) -eq 0 ]]; then
    echo "No es primo"
  else
    echo "Es primo"
  fi
done
