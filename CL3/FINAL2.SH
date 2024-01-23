#! /bin/bash
sizes=$(ls -l | tr -s " " | cut -d " " -f 5 | xargs | tr " " "+")
fileNumber=$(ls | wc -l)
let addSizes=$sizes


let average=$addSizes/$fileNumber
echo -e "El tamaño medio de los archivos de la ruta actual es \033[34m $average bytes \033[0m"