#!/bin/bash

dir=$1

fecha=$(date "+%Y-%m-%d")

archivo_tar="${fecha}-${dir}.tar.gz"

tar -czvf $archivo_tar $dir
