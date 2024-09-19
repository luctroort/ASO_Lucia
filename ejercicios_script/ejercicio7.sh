#!/bin/bash

dir=$(basename "$1")

fecha=$(date "+%Y-%m-%d")

tar -csvf $fecha-$dir.tar.gz $dir


