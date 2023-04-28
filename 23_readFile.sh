#!/bin/bash
# Programa que permite ejemplificar como se lee un archivo
# Autor: David Ochoa - Github: Sochoag

echo "Leer un archivo"
cat $1

echo -e "\nAlmacenar los valores en una vaiable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio o al final se recorten
echo -e "\nLeer archivos linea por linea utilizando while"
while IFS= read linea
do
  echo "$linea"
done < $1