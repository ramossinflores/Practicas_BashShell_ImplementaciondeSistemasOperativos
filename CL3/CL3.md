# Comandos Linux 3

## FINAL1.SH

Un programa que recibe un nombre de usuario en el primer argumento. A continuación comprueba si ese nombre de usuario existe dentro del archivo /etc/passwd y devuelve un mensaje indicándolo si existe o si no. Ejemplo:

```bash
./FINAL1.SH pepe
El usuario pepe no ha sido encontrado
./FINAL1.SH paco
El usuario paco se ha encontrado
```

## FINAL2.SH

Un programa que lista todos los archivos encontrados en la ruta actual, captura el tamaño de cada uno y luego calcula el tamaño medio para mostrarlo por pantalla. Ejemplo:

```bash
./FINAL2.SH
El tamaño medio de los archivos de la ruta actual es 2356 bytes
```

## FINAL3.SH

Un programa que creará una carpeta llamada secreto solo si es lanzado por root. En caso de que sea lanzado por otro usuario mostrará un error. Ejemplo:

```bash
./FINAL3.SH
Lo siento pero debes ser root para lanzarme
sudo ./FINAL3.SH
Se ha creado la carpeta secreto en la ruta actual
```

## FINAL4.SH

Un programa que permite al usuario mover a la "derecha" o a la "izquierda" un regulador. El programa mostrará por pantalla la posición del regulador después de cada respuesta, y finalizará cuando el usuario indique "fin". Ten en cuenta que el regulador no puede sobrepasar alguno de los extremos. Ejemplo:

```bash
#o-----#
Indica orden: derecha
#-o----#
Indica orden: derecha
#--o---#
Indica orden: izquierda
#-o----#
Indica orden: derecha
#--o---#
Indica orden: fin
```

## FINAL5.SH

Implementa el juego de los chinos para dos jugadores humanos. Este juego comienza poniendo sobre la mesa una cantidad aleatoria (entre 10 y 20) chinos, y en cada turno el usuario puede coger 1, 2 o 3. Pierde el usuario que se lleva el último. Ejemplo:

```bash
Hay 12 chinos en la mesa. Jugador 1 coge: 3
Hay 9 chinos en la mesa. Jugador 2 coge: 2
Hay 7 chinos en la mesa. Jugador 1 coge: 3
Hay 4 chinos en la mesa. Jugador 2 coge: 3
Hay 1 chino en la mesa. Jugador 1 pierde
```

## FINAL6.SH

Implementa el juego de los chinos para un jugador contra la máquina. La CPU irá escogiendo de forma aleatoria los chinos a retirar (salvo si hay 4 o menos chinos, que deberá de hacer el movimiento correcto). Ejemplo:

```bash
Hay 10 chinos en la mesa. Jugador coge: 1
Hay 9 chinos en la mesa. CPU coge 2
Hay 7 chinos en la mesa. Jugador coge: 3
Hay 4 chinos en la mesa. CPU coge 3
Hay 1 chino en la mesa. Jugador pierde
```
