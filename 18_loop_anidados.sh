#!/bin/bash
# Programa para ejemplificar el uso de loop anidados
# Autor: David Ochoa - Github: Sochoag

echo "Loops Anidados"
for fil in $(ls)
do
  for nombre in {1..4}
  do
    echo "Nombre archivo:$fil _ $nombre"
  done
done