#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando read
# Autor: David Ochoa - github:Sochoag

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opcion:$option"
echo "Backup Name:$backupName"
