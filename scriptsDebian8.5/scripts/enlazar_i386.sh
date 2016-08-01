#!/bin/bash

ROOT1=/media/sto

for NODE in $(seq 1 13)
do
    ln -s $ROOT1/media/deb8_$NODE-i386/debian /var/www/html/deb8_$NODE-i386
done

# Actualizaciones.
for NODE in $(seq 1 2)
do
    ln -s $ROOT1/media/deb8up_$NODE-i386 /var/www/html/deb8up_$NODE-i386
done
