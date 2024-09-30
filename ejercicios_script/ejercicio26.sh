rw-r--r--rw-r--r--#!/bin/bash


find . -type f -exec ls -l {} \; 2>/dev/null | egrep '^.{7}rxw' > archivos_peligrosos.txt
