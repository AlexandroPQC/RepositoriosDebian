#!/bin/bash
#añade en /dev/loop nuevos loops y le da permisos
for NODE in $(seq 8 20)
do
	mknod -m 660 /dev/loop$NODE b 7 $NODE
	chmod 666 /dev/loop$NODE
done
