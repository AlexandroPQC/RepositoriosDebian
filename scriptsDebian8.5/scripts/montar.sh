#!/bin/bash

ROOT1=/media/sto
ARCH=$1

# Ruta de las imágenes
cd "$ROOT1/var/ftp/debian8.5/$ARCH"

for NODE in $(seq 1 13)
do
	mkdir $ROOT1/media/deb8_$NODE-$ARCH
 	mount -o loop debian-8.5.0-$ARCH-DVD-$NODE.iso $ROOT1/media/deb8_$NODE-$ARCH
done

# Actualizaciones.
for NODE in $(seq 1 2)
do
	mkdir $ROOT1/media/deb8up_$NODE-$ARCH
 	mount -o loop debian-update-8.5.0-$ARCH-DVD-$NODE.iso $ROOT1/media/deb8up_$NODE-$ARCH
done
