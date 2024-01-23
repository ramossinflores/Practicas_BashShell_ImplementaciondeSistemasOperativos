#! /bin/bash
touch H$(date +%H).txt M$(date +%M).txt S$(date +%S).txt D$(date +%d).txt A$(date +%Y).txt
echo "La ruta home de $(whoami) es la siguiente $(echo $HOME). Y en dicha ruta dispones de $(ls -l ~ | grep ^d | wc -l) directorios y $(ls -l ~ | grep ^- | wc -l) archivos" >> H$(date +%H).txt