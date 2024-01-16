#! /bin/bash
read -p "Introduce un número: " num
#for ((i=1;i=5;i++))
#do 
#echo -n "$(($num** $i)), " >> potencias.txt
#done
n1=$(let $num**0)
echo -n "$n1, " >> potencias.txt
n2=$(let $num**2)
echo -n "$n2, " >> potencias.txt
n3=$(let $num**0)
echo -n "$n3, " >> potencias.txt
n4=(($num**3))
echo -n "$n4, " >> potencias.txt
n5=(($num**4))
echo -n "$n5, " >> potencias.txt
n6=(($num**5))
echo -n "$n6 " >> potencias.txt