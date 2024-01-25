while [ $opcion!=0 ]
do
echo '- Menu -'
echo '1. Registrar salida de barco'
echo '2. Registrar llegada de barco'
echo '3. Contabilizar total de salidas'
echo '4. Contabilizar total de llegadas'
echo '5. Comprobar barco'
echo '6. Eliminar entradas'
echo '0. Salir'
read -p 'Seleccione una opción: ' opcion
if [[ $opcion =  1 ]]
    then 
        read -p 'Introduzca la fecha de salida (formato DD/MM/AAAA): ' fechaSalida
        read -p 'Introduzca la matrícula del barco ( formato NNNNLLL): ' matriculaBarco
        echo "$fechaSalida Sale el barco $matriculaBarco" >>  registro.txt
    elif [[ $opcion =  2 ]]
    then 
        read -p 'Introduzca la fecha de llegada (formato DD/MM/AAAA): ' fechaLlegada
        read -p 'Introduzca la matrícula del barco ( formato NNNNLLL): ' matriculaBarco
        echo "$fechaLlegada Entra el barco $matriculaBarco" >>  registro.txt
    elif [[ $opcion =  3 ]]
    then 
        numeroSalidas=$( cat registro.txt | cut -d " " -f2 | grep "Sale" | wc -w)
        echo "El total de salidas registradas es: $numeroSalidas"
    elif [[ $opcion =  4 ]]
    then 
        numeroEntradas=$( cat registro.txt | cut -d " " -f2 | grep "Entra" | wc -w)
        echo "El total de entradas registradas es: $numeroEntradas"
    elif [[ $opcion =  5 ]]
    then
        read -p "Por favor, introduzca la matrícula del barco: " matricula
        numeroMatriculaEntrada=$( cat registro.txt | grep "$matricula" | cut -d " " -f2 | grep "Entra" | wc -w)
        numeroMatriculaSalida=$( cat registro.txt | grep "$matricula" | cut -d " " -f2 | grep "Sale" | wc -w)          
        echo "El barco $matricula ha realizado $numeroMatriculaEntrada entradas y $numeroMatriculaSalida salidas en puerto"
    elif [[ $opcion =  6 ]]
    then
        read -p "Por favor, introduzca la matrícula del barco: " matricula
        sinMatricula=$(grep -v $matricula registro.txt)  
        echo $sinMatricula > registro.txt
    else 
    echo 'Por favor, introduzca un número de opción del menú.'
    fi
    done   
