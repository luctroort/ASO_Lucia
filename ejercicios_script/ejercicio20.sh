#!/bin/bash

num=$1

if [[ $num -le 2 ]]; then
  echo "Es primo"
  exit
fi

for ((i=2; i*i<=num; i++)); do
  if [[ $((num % i)) -eq 0 ]]; then
    echo "No es primo"
    exit
  else
    echo "Es primo"
    exit
  fi
done
