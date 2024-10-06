#!/bin/bash

$1=accion
$2=nombre
$3=apellido1
$4=apellido2
$5=grupo

usuario="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

if [ $accion = "alta" ]; then
  if [ -z $grupo ]; then
    grupo=$user_id
    grupoadd $grupo
  fi
  useradd -m -g $grupo -s /bin/bash $user_id
elif [ $accion = "baja" ]; then
  userdel -r $user_id
fi
