#! /bin/bash

regu=( \# 0 - - - - - - \# )
echo "${regu[@]}"
i=1
while [ $i -ge 1 -a $i -le 7 ]
do
read -p "Indica una orden: " ch
if [ $ch = 'derecha' ]
    then
        if [ $i -le 6 ]
            then 
            regu[i]="-"
            let j=i+1
            regu[j]="0"
            echo "${regu[@]}"
            let i=i+1
        else
            echo 'No puedes ir más a la derecha'
            echo "${regu[@]}"
        fi 
elif [ $ch = 'izquierda' ]
    then
        if [ $i -eq 1 ]
            then 
            echo 'No puedes ir más a la izquierda'
            echo "${regu[@]}"
        else
            regu[i]="-"
            let j=i-1
            regu[j]="0"
            echo "${regu[@]}"
            let i=i-1        
        fi
elif [ $ch = 'fin' ]
    then
    exit
else
echo "Por favor escribe derecha o izquierda o fin"
echo "${regu[@]}"
fi
done