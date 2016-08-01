#!/bin/bash

ROOT1=/media/sto

cd "$ROOT1/var/ftp/debian8.5/i386"

for NODE in $(seq 1 13)
do
	mkdir $ROOT1/media/deb8_$NODE-i386
 	mount -o loop debian-8.5.0-i386-DVD-$NODE.iso $ROOT1/media/deb8_$NODE-i386
done

# Actualizaciones.
for NODE in $(seq 1 2)
do
	mkdir $ROOT1/media/deb8up_$NODE-i386
 	mount -o loop debian-update-8.5.0-i386-DVD-$NODE.iso $ROOT1/media/deb8up_$NODE-i386
done
