#!/bin/bash
for num in {1..5}; do
  for (( i=1; i<=num; i++ )); do
  echo -n "$num"
  done
echo
done
