#! /bin/bash
read -p "Introduzca un nombre de usuario: " username
match=$(cut -d ":" -f 1 /etc/passwd | grep $username)
if [ $match=$username ]
then
echo -e "El usuario \033[34m $username \033[0m ha sido encontrado."
else 
echo -e "El usuario \033[34m $username \033[0m \033[31m no \033[0m ha sido encontrado."
fi