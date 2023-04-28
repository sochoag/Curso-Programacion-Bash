#!/bin/bash
# Programa que permite ejemplificar las operaciones de un archivo
# Autor: David Ochoa - Github: Sochoag

echo "Leer un archivo"
mkdir -m 755 backupScripts


echo -e "\nCopoar los scripts del directario actual al nuevo directorio BackupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio a otra ubicacion: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt