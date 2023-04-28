#!/bin/bash
# Programa que permite ejemplificar como se escribe en un archivo
# Autor: David Ochoa - Github: Sochoag

echo "Escribir un archivo"

echo "Valores escritos con el comando echo" >> $1

#adición multilínea
cat <<EOM >>$1
$2
EOM
