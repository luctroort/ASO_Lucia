#!/bin/bash

contador=1
while [[ $contador -le 1000 ]];do
  echo $contador
  ((contador++))
done
