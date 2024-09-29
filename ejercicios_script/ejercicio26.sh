#!/bin/bash

find / -type f | egrep '^.{7}rxw' > archivos_peligrosos.txt
cat archivos_peligrosos.txt
