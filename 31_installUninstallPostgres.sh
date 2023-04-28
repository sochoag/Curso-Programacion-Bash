#!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: David Ochoa - Github: Sochoag

opcion=0

# Función para instalar postgres
instalarPostgres () {
    echo -e "\n Verificar instalación postgres ...."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo:" password
        read -s -p "Ingresar contraseña a utilizar en postgres:" passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi    
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

# Función para desinstalar postgres
desinstalarPostgres () {
    read -s -p "Ingresar contraseña de sudo:" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

# Función para sacar un respaldo
sacarRespaldo () {
    echo "Listar las bases de datos"
    sudo -u postgres psql -c "\l"
    read -p "Elegir la base de datos a respaldar:" bddRespaldo
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "Establecer permisos directorio"
        echo "$password" | sudo -S chmod 755 $1
        echo "Realizando respaldo..."
        sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
        echo "Respaldo realizado correctamente en la ubicación:$1/bddRespaldo$fechaActual.bak"
    else
        echo "El directorio $1 no existe"
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

# Función para restaurar un respaldo
restaurarRespaldo () {
    echo "Listar respaldos"
    ls -1 $1/*.bak
    read -p "Elegir el respaldo a restaurar:" respaldoRestaurar
    echo -e "\n"
    read -p "Ingrese el nombre de la base de datos destino:" bddDestino
    #Verificar si la bdd existe
    verifyBdd=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bddDestino)
    if [ $? -eq 0 ]; then
        echo "Restaurando en la bdd destino: $bddDestino"
    else
        sudo -u postgres psql -c "create database $bddDestino"
    fi

    if [ -f "$1/$respaldoRestaurar" ]; then
        echo "Restaurando respaldo..."
        sudo -u postgres pg_restore -Fc -d $bddDestino "$1/$respaldoRestaurar"
        echo "Listar la base de datos"
        sudo -u postgres psql -c "\l"
    else
        echo "El respaldo $respaldoRestaurar no existe"
    fi    
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

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
      instalarPostgres
      sleep 3
      ;;
    2)
      desinstalarPostgres
      sleep 3
      ;;
    3)
      read -p "Directorio Backup:" directorioBackup
      sacarRespaldo $directorioBackup
      sleep 3
      ;;
    4)
      read -p "Directorio Backup:" directorioBackup
      restaurarRespaldo $directorioBackup
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