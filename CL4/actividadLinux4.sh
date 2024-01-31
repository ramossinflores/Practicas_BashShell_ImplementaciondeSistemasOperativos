while [ $opcion!=0 ]
do
echo "-MENU-"
echo "1. Crear usuario"
echo "2. Borrar usuario"
echo "3. Mostrar información del usuario"
echo "4. Modificar información del usuario"
echo "0. Salir"
read -p 'Seleccione una opción: ' opcion
if [[ $opcion = 1 ]]
    then
        read -p "Por favor, introduce un nombre de usuario: " userName
        read -p "Indique la información extra de usuario: " userInfoExtra
        read -p "Indique la ruta para el home del usuario: " userHome
        sudo adduser --home $userHome $userName
        sudo usermod -c $userInfoExtra $userName
        echo -e "El usuario \033[34m $userName \033[0m ha sido creado correctamente."
elif [[ $opcion = 2 ]]
    then
        read -p "Por favor, introduce un nombre de usuario a borrar: " delUserName
        sudo deluser $delUserName
        echo "El usuario $delUserName ha sido eliminado correctamente"
elif [[ $opcion = 3 ]]  
    then 
        read -p "Indique el nombre de usuario a consultar: " infoUser
        echo -e "INFO USER: \033[34m $(egrep ^$infoUser: /etc/passwd | cut -d ":" -f 1) \033[0m"
        echo -e "INFO UID: \033[34m $(egrep ^$infoUser: /etc/passwd | cut -d ":" -f 3) \033[0m"     
        echo -e "INFO GID: \033[34m $(egrep ^$infoUser: /etc/passwd | cut -d ":" -f 4) \033[0m"
        echo -e "INFO COMENTARIOS: \033[34m $(egrep ^$infoUser: /etc/passwd | cut -d ":" -f 5) \033[0m" 
        echo -e "INFO HOME: \033[34m $(egrep ^$infoUser: /etc/passwd | cut -d ":" -f 6) \033[0m"
        echo -e "INFO HOME: \033[34m $(egrep ^$infoUser: /etc/passwd | cut -d ":" -f 7) \033[0m"             
elif [[ $opcion = 4 ]]          
    then
    read -p "Indique el nombre de usuario a modificar: " modUser
                 read -p "Indique el campo a modificar [C (comentarios) o H (Ruta Home)]: " ch
                if [ $ch = "C" ]
                    then
                        read -p "Indique el nuevo comentario de usuario: " userNewInfo
                        sudo usermod -c $userNewInfo $modUser
                        echo -e "El comentario del usuario $modUser ha sido correctamente modificado"
                elif  [ $ch = "H" ]
                    then
                        read -p "Indique la nueva ruta de HOME de usuario: " userNewHome
                        sudo usermod -d $userNewHome $modUser
                        echo -e "La ruta de HOME del usuario $modUser ha sido correctamente modificada"
                else 
                    echo "Por favor, introduce valores correctos"
                fi
elif [[ $opcion = 0 ]]          
    then
    exit    
else 
    echo "Por favor, introduce un número de opción del menú"    
fi
done