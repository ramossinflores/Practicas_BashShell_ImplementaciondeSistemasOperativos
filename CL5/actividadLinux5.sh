echo -e "\n \033[45m $USER \033[0m ha lanzado el programa el día $(date +'%d/%m/%Y')"
while [[ $opcion != 0 ]]
do
echo -e "\n \033[35m ******************\033[0m MENU \033[35m******************\033[0m"
echo "1. Crear directorio con nombre"
echo "2. Crear archivo con nombre"
echo "3. Borrar directorio"
echo "4. Borrar archivo"
echo "5. Modificar permisos de archivo"
echo "6. Estadísticas"
echo "0. Salir"
read -p 'Seleccione una opción: ' opcion

if [[ $opcion = 1 ]]
    then
        read -p "Por favor, introduce el nombre del directorio a crear o la palabra 'aleatorio' para generar un nombre numérico al azar: " dirName
        if [ $dirName == "aleatorio" ]
            then
            randomName=$((RANDOM%1000000))
            mkdir $randomName
            echo -e "\nEl directorio \033[35m $randomName \033[0m ha sido creado correctamente en la ruta actual $(pwd)."
            else
            mkdir $dirName
            echo -e "\nEl directorio \033[35m $dirName \033[0m ha sido creado correctamente en la ruta actual $(pwd)."
        fi

elif [[ $opcion = 2 ]]
    then
        read -p "Por favor, introduce el nombre del archivo a crear o la palabra 'secreto' para generar un archivo oculto con nombre numérico al azar: " fileName
        if [ $fileName == "secreto" ]
            then
            randomName=$((RANDOM%1000000))
            touch .$randomName.txt
            echo -e "\nEl archivo oculto \033[35m $randomName.txt \033[0m ha sido creado correctamente en la ruta actual $(pwd)."
            else
            touch $fileName.txt
            echo -e "\nEl archivo \033[35m $fileName.txt \033[0m ha sido creado correctamente en la ruta actual $(pwd)."
        fi

elif [[ $opcion = 3 ]]  
    then
        echo -e "\nTienes los siguientes directorios en la ruta actual:"
        ls -l |egrep ^d | tr -s " "| cut -d " " -f 9
        read -p "Por favor, introduce el nombre del directorio de la lista que deseas borrar: " rmDirec
        rm -d $rmDirec
        echo -e "\nEl directorio \033[35m $rmDirec \033[0m ha sido borrado."

elif [[ $opcion = 4 ]]          
    then
        echo -e "\nTienes los siguientes archivos en la ruta actual:"
        ls -l |egrep ^- | tr -s " "| cut -d " " -f 9
        read -p "Por favor, introduce el nombre del archivo de la lista que deseas borrar: " rmFile
        rm $rmFile
        echo -e "\nEl archivo \033[35m $rmFile \033[0m ha sido borrado."

elif [[ $opcion = 5 ]]          
    then
        echo -e "\nTienes los siguientes archivos en la ruta actual:"
        ls -l |egrep ^- | tr -s " "| cut -d " " -f 9
        echo -e "\nY los siguientes directorios:"
        ls -l |egrep ^d | tr -s " "| cut -d " " -f 9   
        echo -e "\n"             
        read -p "¿Deseas dar o quitar permisos? Escribe + para dar o  - para quitar:" addOrRemove
        read -p "¿Qué permiso quieres modificar? Escribe R (lectura), W (escritura) o X (ejecución):" RWorX
        read -p "Ahora, indica el nombre del archivo o directorio de la lista en la ruta actual:" fileOrDirName
            
            if [ $addOrRemove == "+" ]
                then
                    if [ $RWorX == "R" ]
                            then
                            chmod u+r $fileOrDirName
                            echo -e "\nHa dado permisos de lectura a \033[35m $fileOrDirName \033[0m."
                        elif [ $RWorX == "W" ]
                            then
                            chmod u+w $fileOrDirName
                            echo -e "\nHa dado permisos de escritura a \033[35m $fileOrDirName \033[0m."                        
                        elif [ $RWorX == "X" ]
                            then
                            chmod u+x $fileOrDirName
                            echo -e "\nHa dado permisos de ejecución a \033[35m $fileOrDirName \033[0m."                                                        
                    fi
            elif [ $addOrRemove == "-" ]
                then
                    if [ $RWorX == "R" ]
                            then
                            chmod u-r $fileOrDirName
                            echo -e "\nHa quitado permisos de lectura a \033[35m $fileOrDirName \033[0m."
                        elif [ $RWorX == "W" ]
                            then
                            chmod u-w $fileOrDirName
                            echo -e "\nHa quitado permisos de escritura a \033[35m $fileOrDirName \033[0m."                        
                        elif [ $RWorX == "X" ]
                            then
                            chmod u-x $fileOrDirName
                            echo -e "\nHa quitado permisos de ejecución a \033[35m $fileOrDirName \033[0m."                                                        
                        else 
                            echo "Debes escribir R (lectura), W (escritura) o X (ejecución)"
                    fi
            else 
                    echo "Debes escribir + para dar o  - para quitar"                            
            fi    

elif [[ $opcion = 6 ]]          
    then        
        totalFiles=$(ls -l |egrep ^- | wc -l)
        totalDir=$(ls -l |egrep ^d | wc -l)
        totalHiddenFiles=$(ls -la |egrep ^- | tr -s " "| cut -d " " -f 9 | egrep ^"\." | wc -l)
        echo -e "\nNúmero de archivos en la ruta actual: \033[35m  $totalFiles \033[0m"
        echo -e "Número de directorios en la ruta actual: \033[35m  $totalDir \033[0m"
        echo -e "Número de archivos ocultos en la ruta actual: \033[35m  $totalHiddenFiles \033[0m"

elif [[ $opcion = 0 ]]          
    then
    exit    

else 
    echo "Por favor, introduce un número de opción del menú"    
fi
done