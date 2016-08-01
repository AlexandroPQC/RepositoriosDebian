#!/bin/bash

ROOT1=/media/sto
ARCH=$1

for NODE in $(seq 1 13)
do
    ln -s $ROOT1/media/deb8_$NODE-$ARCH/debian /var/www/html/deb8_$NODE-$ARCH
done

# Actualizaciones.
for NODE in $(seq 1 2)
do
    ln -s $ROOT1/media/deb8up_$NODE-$ARCH /var/www/html/deb8up_$NODE-$ARCH
done
