#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla
# Autor: David Ochoa - github:Sochoag

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"

# Acepta el ingreso de información de un solo caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opcion:$option"
echo "Backup Name:$backupName"
read -s -p "Clave:" clave
echo -e "\n"
echo "Clave:$clave"
