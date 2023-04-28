#!/bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: David Ochoa - Github: Sochoag

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números ${arregloNumeros[*]}"
echo "Arreglo de Cadenas ${arregloCadenas[*]}"
echo "Arreglo de Rangos ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño de Números ${#arregloNumeros[*]}"
echo "Tamaño de Cadenas ${#arregloCadenas[*]}"
echo "Tamaño de Rangos ${#arregloRangos[*]}"

#Imprimir la posicion 3 del arreglo de numeros
echo "Posicion arreglo 3 arreglo de Números ${arregloNumeros[3]}"
echo "Posicion arreglo 3 arreglo de Cadenas ${arregloCadenas[3]}"
echo "Posicion arreglo 3 arreglo de Rangos ${arregloRangos[3]}"

#Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros:${arregloNumeros[*]}"
echo "Tamaño de numeros:${#arregloNumeros[*]}"
