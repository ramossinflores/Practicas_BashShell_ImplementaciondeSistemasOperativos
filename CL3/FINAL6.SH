#! /bin/bash
randomNumber=$(( $RANDOM % 10 + 10))
sum=0;
        while [ $randomNumber -ne $sum ]
            do
            read -p "Hay $(( $randomNumber - $sum )) chinos en la mesa. Jugador coge: " player1                
                    if [[ $player1 = 3  || $player1 = 2 || $player1 = 1 ]]
                        then
                            let sum=$player1+$sum
                                    if [[ $sum = $randomNumber ]]
                                        then
                                        echo -e " \033[34m Haz ganado. El CPU ha perdido \033[34m"
                                        break
                                    elif [[ $(( $randomNumber - $sum )) -le 4 ]]
                                        then
                                            if [[ $(( $randomNumber - $sum )) -eq 4 ]]
                                                then
                                                let CPU=3
                                                echo -e "Hay $(( $randomNumber - $sum )) chinos en la mesa \033[34m El CPU escoge $CPU y ha ganado \033[34m"
                                                break
                                            elif [[ $(( $randomNumber - $sum )) -eq 3 ]]
                                                then
                                                let CPU=2
                                                echo -e "Hay $(( $randomNumber - $sum )) chinos en la mesa \033[34m El CPU escoge $CPU y ha ganado \033[34m"
                                                break
                                            elif [[ $(( $randomNumber - $sum )) -eq 2 ]]
                                                then
                                                let CPU=1
                                                echo -e "Hay $(( $randomNumber - $sum )) chinos en la mesa \033[34m El CPU escoge $CPU y ha ganado \033[34m"
                                                break
                                                fi                                                
                                    else 
                                        CPU=$(($RANDOM % 3 + 1 ))
                                        echo "Hay $(( $randomNumber - $sum )) chinos en la mesa. CPU coge: $CPU" 
                                        let sum=$CPU+$sum
                                    fi                           
                        else
                        echo "Por favor, introduce 1 o 2 o 3."
                    fi              
        done