#!/bin/bash
# Programa para ejemplicar el uso de if, else if, else
# Author: David Ochoa - Github:Sochoag

edad=0

echo "Ejemplo sentencia if - elif - else"
read -p "Indique cual es su edad:" edad
if [ $edad -le 18 ]; then
  echo "La persona es adolencente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "La persona es adulta"
else 
  echo "La persona es adulto mayor"
fi