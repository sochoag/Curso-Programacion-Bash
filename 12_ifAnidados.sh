#!/bin/bash
# Programa para ejemplicar el uso de if anidades
# Author: David Ochoa - Github:Sochoag

notaClase=0
continua=""

echo "Ejemplo sentencia if anidados"
read -n1 -p "Indique cual es nota (1-9):" notaClase
echo
if [ $notaClase -ge 7 ]; then
  echo "El alumno aprueba la materia"
  read -n1 -p "Va a continuar estudiando en el siguiente nivel (s/n):" continua
  echo
  if [ $continua == "s" ]; then
    echo "Bienvenido al siguiente nivel"
  else
    echo "Gracias por trabajar con nosotros, mucha suerte!!!"
  fi
else 
  echo "El alumno reprueba la materia"
fi