#!/bin/bash

# Hola, ;-) este script levantar'a los repositorios Debian 8.5
# Primero usa mknod para habilitar loops
# Tambien hace links simbolicos para acceder desde ftp


if [ $UID = 0 ]
then
	echo "-....................-"
	scripts/montar.sh i386
	scripts/montar.sh amd64
	scripts/enlazar.sh i386
	scripts/enlazar.sh amd64
else
	echo "No tienes permisos para esto..."
fi
exit 0

