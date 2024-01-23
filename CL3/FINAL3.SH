#! /bin/bash
currentUser=$(whoami)
if [ $currentUser == 'root' ]
then 
mkdir secreto
echo -e "Se ha creado el directorio \033[34m secreto \033[0m en la ruta actual"
else
echo -e "Lo siento \033[43m :(  \033[0m pero debes ser \033[43m root \033[0m para lanzarme."
fi