#!/bin/bash
# Programa para revisar la declaración de variables

opcion=0
nombre=David

echo "Opcion: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que esté disponible en otros porcesos
export nombre

# Llamar al siguiente script para recuperar la variable
./2_variables_2.sh