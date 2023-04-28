#!/bin/bash
# Programa que permite ejemplificar el empaquetamiento con tar gzip
# Autor: David Ochoa - Github: Sochoag

echo "Empaquetar todos los scripts"
tar -cvf shellCourse.tar *.sh
# Cuando se comprime con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo con un ratio de 9"
gzip -9 9_options.sh