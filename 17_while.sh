#!/bin/bash
# Programa para ejemplificar el uso de while
# Autor: David Ochoa - Github: Sochoag

numero=1

while [ $numero -ne 10 ]
do
  echo "Imprimiendo $numero veces"
  numero=$(( numero + 1 ))
done