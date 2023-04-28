#!/bin/bash
# Programa para ejemplificar la forma de como transferir po la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Autor: David Ochoa - Github: Sochoag

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""
ruta=""

read -p "Ingresar el host:" host
read -p "Ingresar el usuario:" usuario
read -p "Ingresar donde desea guardar el archivo:" usuario
echo -e "\nEn este momento se procedera a empaquetar la carpeta y transferirla segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:$ruta