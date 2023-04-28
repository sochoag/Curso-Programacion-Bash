#!/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Author: David Ochoa - Github: Sochoag

opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opcion de la A - Z:" opcion
echo 

case $opcion in
  "A") echo -e "\nOperación Guardar archivo";;
  "B") echo -e "\nOperación Eliminar archivo";;
  [C-E]) echo -e "\nNo está implementada la opcion";;
  "*") echo -e "\nOpcion Incorrecta";;
esac
