#!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: David Ochoa - Github: Sochoag

opcion=0

while :
do
  #Limpiar la pantalla
  clear
  #Desplegar el menu de opciones
  echo "┌──────────────────────────────────────────┐"
  echo "│ PGUTIL - Programa de utildad de postgres │"
  echo "├──────────────────────────────────────────┤"
  echo "│             MENU PRINCIPAL               │"
  echo "├─────┬────────────────────────────────────┤"
  echo "│  1  │ Instalar postgres                  │"
  echo "├─────┼────────────────────────────────────┤"
  echo "│  2  │ Desinstalar postgre s              │"
  echo "├─────┼────────────────────────────────────┤"
  echo "│  3  │ Respaldar BD                       │"
  echo "├─────┼────────────────────────────────────┤"
  echo "│  4  │ Restaurar BD                       │"
  echo "├─────┼────────────────────────────────────┤"
  echo "│  5  │ Salir                              │"
  echo "└─────┴────────────────────────────────────┘"

  # Leer los datos del usuario - capturar información
  read -n1 -p "Ingrese una opción [1-5]:" opcion
  echo

  # Validar la opción ingresada
  case $opcion in
    1)
      echo "Instalar postgres..."
      sleep 3
      ;;
    2)
      echo "Desinstalar postgres..."
      sleep 3
      ;;
    3)
      echo "Respaldar DB..."
      sleep 3
      ;;
    4)
      echo "Restaurar DB..."
      sleep 3
      ;;
    5)
      echo "Salir del programa"
      exit 0
      ;;
    *)
      echo "No se reconoce el comando"
      sleep 3
      ;;
  esac
done