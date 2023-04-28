#!/bin/bash
# Programa que permite ejemplificar la creación de archivos y directorios
# Autor: David Ochoa - Github: Sochoag

echo "Archivos - Directorios"
if [ $1 == "d" ];then
  mkdir -m 755 $2
  echo "Directorio creado correctamente"
  ls -la $2
elif [ $1 == "f" ]; then
  touch $2
  echo "Archivo creado correctamente"
  ls -la $2
else
  echo "No exista esa opción: $1"
fi
