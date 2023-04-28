#!/bin/bash
# Programa para ejemplicar el uso de id, else
# Author: David Ochoa - Github:Sochoag

notaClase=0
edad=0

echo "Ejemplo sentencia if - else"
read -n1 -p "Indique cual es su nota (1-9):" notaClase
echo
if (( $notaClase >= 7 )); then
  echo "El alumno aprueba la materia"
else
  echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad:" edad
if [ $edad -le 18 ]; then
  echo "La persona no puede sufragar"
else 
  echo "La persona puede sufragar"
fi