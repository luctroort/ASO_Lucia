#!/bin/bash

fecha=$(date "+%H:%M")

if [[ $fecha -gt "8:00" && -lt "15:00" ]]; then
  echo "Buenos días"
elif [[ $fecha -gt "15:00" && -lt "20:00" ]]; then
  echo "Buenas tardes"
else
  echo "Buenas noches"
fi
