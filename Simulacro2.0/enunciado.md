# Desarrolla el siguiente script teniendo en cuenta los requerimientos que se piden para él:

## Se desea crear un programa que muestre el siguiente menú:

```bash
- MENU -
1. Registrar salida de barco
2. Registrar llegada de barco
3. Contabilizar total de salidas
4. Contabilizar total de llegadas
5. Comprobar barco
6. Eliminar entradas
0. Salir
```

El funcionamiento de cada una de las opciones deberá ser similar a lo que a continuación se define:

(+2) Las opciones 1 y 2 preguntarán al usuario por la fecha de llegada (formato DD/MM/AAAA) y luego por la matrícula del barco (imaginemos que es como la de los coches actualmente: NNNNLLL). A continuación añadirán por el final en el archivo registro.txt un mensaje del siguiente estilo:

```bash
01/01/2022 Entra barco 1234ABC
15/02/2022 Sale barco 9876ZYX
```

(+2) Las opciones 3 y 4 devolverán por pantalla el total de entradas o salidas registradas dentro del archivo registro.txt con un mensaje del siguiente estilo:

```bash
El total de entradas registradas es 25
El total de salidas registradas es 16
```

(+2) La opción 5 preguntará primero al usuario por la matrícula del barco. Una vez que la tenga, comprobará en el archivo registro.txt cuántas entradas/salidas ha tenido ese barco en el puerto con el siguiente mensaje:

```bash
El barco 0000AAA ha realizado 4 entradas y 3 salidas en puerto
```

(+3) La opción 6 preguntará por una matrícula de barco y a continuación, eliminará todas las líneas del archivo registro.txt que se refieran a ese barco (entradas y salidas).
(+1) El programa deberá de funcionar hasta que se escoja la opción cero, y debería de estar preparado para evitar opciones inválidas