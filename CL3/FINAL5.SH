#! /bin/bash
randomNumber=$(( $RANDOM % 10 + 10))
sum=0;
        while [ $randomNumber -ne $sum ]
            do
            read -p "Hay $(( $randomNumber - $sum )) chinos en la mesa. Jugador 1 coge: " player1                
                    if [[ $player1 = 3  || $player1 = 2 || $player1 = 1 ]]
                        then
                            let sum=$player1+$sum
                                    if [[ $sum = $randomNumber ]]
                                    then
                                        echo -e " \033[34m El jugador 1 ha perdido \033[34m"
                                        break
                                    fi
                            read -p "Hay $(($randomNumber - $sum)) chinos en la mesa. Jugador 2 coge: " player2
                                if [[ $player2 = 3 || $player2 = 2 || $player2 = 1 ]]
                                then
                                    let sum=$player2+$sum
                                        if [[ $sum = $randomNumber ]]
                                        then
                                            echo -e " \033[34m El jugador 2 ha perdido \033[34m"
                                        fi
                                else
                            echo "Por favor, introduce 1 o 2 o 3."
                        fi    
                    else
                        echo "Por favor, introduce 1 o 2 o 3."
                    fi                    
            done
    
