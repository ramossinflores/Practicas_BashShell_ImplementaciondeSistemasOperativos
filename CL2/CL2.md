
# Comandos Linux 2

## PROG1.SH

Un programa que recibe tres números en sus argumentos de entrada y que a continuación muestra por pantalla la siguiente frase:

```bash
Dentro de `<arg1>` minuto/s, las computadoras acabadas en `<arg2>` serán revisadas `<arg3>` veces
```

## PROG2.SH

Un programa que recibe un dígito en su primer argumento y una palabra en su segundo argumento. A continuación, crea un directorio con el nombre `<digito><palabra>` (todo junto) y dentro, crea un archivo llamado `<palabra><digito>.txt` (todo junto también)

## PROG3.SH

Un programa que pregunta al usuario por un nombre, y a continuación hace uso del comando `usermod` para modificar el campo comentarios del usuario actual con el que se ha capturado (comprueba que el archivo `/etc/passwd` se ha modificado correctamente)

## PROG4.SH

Un programa que pregunta al usuario por un dígito y por una letra. A continuación, pinta por pantalla un triángulo usando esos caracteres en borde y en el interior respectivamente, ejemplo para el dígito 0 y la letra A:

```bash
   0
  0A0
 0AAA0
0000000
```

## PROG5.SH

Un programa que recibe un dígito en el primer argumento de entrada, y a continuación genera tres carpetas en la ruta actual con el nombre "carpeta" y el siguiente número. Por ejemplo, si le pasamos el 5, creará: carpeta6, carpeta7 y carpeta8

## PROG6.SH

Un programa que pregunta al usuario por un número, y a continuación vuelca en `potencias.txt` la sucesión de potencias de ese número hasta la quinta (n^5). Por ejemplo, si le pasamos el 3, volcará en un archivo de texto la siguiente línea:

```bash
3,9,27,81,243
```

Si se vuelve a invocar, añadirá las nuevas líneas siempre por el final, sin que se pierda lo ya guardado.

## PROG7.SH

Un programa al que se le pasa como argumento la ruta de un archivo de texto llamado `acrear.txt` que contiene cuatro palabras elegidas por el estudiante, separadas por espacios. El programa creará tantos archivos vacíos como palabras haya, utilizándolas como nombre de archivos (la extensión será siempre .txt). Por ejemplo, si el archivo contiene:

```bash
uno dos tres cuatro
```

Se crearán los archivos: `uno.txt`, `dos.txt`, `tres.txt`, `cuatro.txt`
