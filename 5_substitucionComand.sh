#!/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenralos en una variable para su posterior utilización
# Autor: David Ochoa - github:Sochoag

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicacion actual es la siguiente: $ubicacionActual"
echo "Informacion del Kernel: $infoKernel"