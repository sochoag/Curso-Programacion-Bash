#!/bin/bash
# Programa que permite ejemplificar el empaquetamiento con pbzip
# Autor: David Ochoa - Github: Sochoag

echo "Empaquetar todos los scripts"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio cont ar y pbzip2"
tar -cf *.sh > shellCourse2.tar.bz2