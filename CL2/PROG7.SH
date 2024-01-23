#! /bin/bash 
i=$(wc $1)
for ((i=1;i=$i;i++))
do 
nombreArchivoNuevo=$(cat $1| cut -d " " -f$i)
touch "$nombreArchivoNuevo.txt"
done
#https://www.linuxsc.net/como-usar-el-comando-xargs-en-linux-para-simplificar-su-trabajo/