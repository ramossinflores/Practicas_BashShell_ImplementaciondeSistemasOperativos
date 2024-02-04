# Comandos Linux 5

## Desarrolla el siguiente script teniendo en cuenta los requerimientos que se piden para él

Se desea crear un programa que muestre el siguiente menú:

```bash
- MENU -
1. Crear directorio con nombre
2. Crear archivo con nombre
3. Borrar directorio
4. Borrar archivo
5. Modificar permisos de archivo
6. Estadísticas
0. Salir
```

El funcionamiento de cada una de las opciones deberá ser similar a lo que a continuación se define:

- (+1) El programa mostrará un mensaje al comenzar dando información de nuestro usuario y mostrando la fecha actual. Por ejemplo, si tu usuario es Diurno, mostrará la frase:

```bash
Diurno ha lanzado el programa el día 20/01/2023
```

- (+1) En la opción 1 el programa preguntará al usuario por el nombre a usar para la carpeta, pero si el usuario pone la palabra "aleatorio" (sin comillas) el programa creará una carpeta con nombre numérico al azar
- (+1) En la opción 2 el programa preguntará al usuario por el nombre a usar el archivo, pero si el usuario pone la palabra "secreto" (sin comillas) el programa creará un archivo con nombre numérico aleatorio y extensión .TXT, y lo configurará como archivo oculto
- (+2) Las opciones 3 y 4 preguntarán al usuario por el nombre de carpeta o archivo a borrar, luego lo eliminará
- (+2) La opción 5 preguntará primero si se quiere dar o quitar (usuario escribirá símbolo + o -), luego por el tipo de permiso a aplicar (usuario escribirá R para lectura, W para escritura o X para ejecución) y finalmente el nombre del archivo o carpeta sobre el que trabajar. El programa solo cambiará los permisos de propietario. Ejemplo:

```bash
Dar o quitar (+ / -): +
Permiso a modificar (R / W / X): W
Nombre de archivo: patata.txt
```

(El programa añadirá el permiso de escritura al propietario sobre el archivo patata.txt)

- (+2) La opción 6 generará por pantalla las siguientes estadísticas, mostrando por pantalla los siguientes tres mensajes:

```bash
Número de archivos en la ruta actual:
Número de carpetas en la ruta actual:
Número de archivos ocultos en la ruta actual:
```

- (+1) El programa deberá funcionar hasta que se escoja la opción cero y estará preparado para evitar opciones inválidas.
