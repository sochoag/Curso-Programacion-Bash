#!/bin/bash
# Programa para ejemplificar el uso de for
# Autor: David Ochoa - Github: Sochoag

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de numeros"
for num in ${arregloNumeros[*]}
do
  echo "Numero:$num"
done

echo "Iterar en la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
  echo "Nombre:$nom"
done

echo "Iterar en archivos"
for fil in *
do
  echo "Nombre archivo:$fil"
done

echo "Iterar utilizando un comando"
for fill in ${ls}
do
  echo "Nombre archivos:$fill"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
  echo "Numero:$i"
done