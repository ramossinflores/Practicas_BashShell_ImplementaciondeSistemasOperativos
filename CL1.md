# Comandos Linux 1

## Indica los comandos a lanzar para resolver las siguientes actividades

### 1. Crea tres carpetas con nombres: uno, dos, tres. A continuación, entra en la carpeta uno y crea un archivo llamado hola.txt, y finalmente haz una copia de ese archivo en las otras carpetas con el mismo nombre

    ```bash
    mkdir uno dos tres
    cd uno/
    touch hola.txt
    cp hola.txt ../dos
    cp hola.txt ../tres
    ```

### 2. Lista los archivos de la ruta /bin que comiencen por s y luego los que terminen por s o por r

    ```bash
    cd /
    cd bin/
    ls s*
    ls {*s,*r}
    ```

### 3. Genera un archivo de texto llamado salida.txt y que vuelca dentro el siguiente contenido (respeta los saltos de línea!)

    ```bash
    Hola usuario <nombre_usuario>
    hoy es día <día_mes>
    de <nombre_mes_completo>
    del año <año_con_4_cifras>
    ```
    ```bash
    echo "Hola usuario" | tr -d '\n'> salida.txt
    echo $USER >> salida.txt
    echo "Hoy es el dia " | tr -d '\n' >> salida.txt
    date +%d >> salida.txt
    echo "de " | tr -d '\n' >> salida.txt
    date +%B >> salida.txt
    echo "del año  " | tr -d '\n' >> salida.txt
    date +%Y >> salida.txt
    ```

### 4. Crea en la carpeta home un archivo llamado importante.txt y a continuación mueve ese archivo hasta un pendrive que conectes a tu equipo

    ```bash
    cd ~
    touch importante.txt
    ls -l /dev/sd* #Se checan las unidades antes de conectar el pendrive
    ls -l /dev/sd* #Se conecta el usb y se lanza de nuevo el comando. La nueva unidad que aparece es el usb. Supongamos que es /dev/sdb1
    mount /dev/sdb1 /media/usb #Se monta con mount. No sé en qué formato está la unidad, por eso no le coloco la flag -t con el formato, sino dejo que el comando lo identifique automáticamente. Para este ejemplo, estoy montando la unidad en el directorio media/usb 
    cd ~
    mv importante.txt /media/usb/ #Finalmente, muevo al usb el archivo
    ```

### 5. Desde la consola de comandos, abre el navegador Firefox con tres pestañas, cada una de ellas con las siguientes direcciones:  [www.google.es](https://www.google.com/);  [www.eltiempo.es](https://www.eltiempo.es/) ; [www.granada.org](https://www.granada.org/)

    ```bash
    firefox -url http://www.google.es/ http://www.eltiempo.es/ http://www.granada.org/
    ```

### 6. Muestra las cinco primeras líneas del archivo /etc/passwd

    ```bash
    head -n 5 /etc/passwd
    ```

### 7. Muestra las cinco últimas líneas del archivo /etc/passwd

    ```bash
    tail -n 5 /etc/passwd
    ```

### 8. Haciendo uso del comando ls -l y del comando cut, intenta listar por pantalla la información pero que solo se muestren los permisos de archivo y al lado los nombres de archivo, como en este ejemplo

    ```bash
    drwxr-xr-x Descargas
    drwxr-xr-x Documentos
    drwxr-xr-x Escritorio
    ```
    ```bash
    ls -l | cut -d " " -f 1,2
    ```

### 9. Muestra por pantalla solo los nombres de archivos de la ruta /bin que cumplan los siguientes requisitos

- Que comiencen por a o por b.
- Que comiencen por c y que tengan en total exactamente 4 letras.
- Que contengan en cualquier parte del nombre la cadena ub o uc.

    ```bash
    cd /bin
    ls {a*,b*}
    ls c???
    ls {*ub*,*uc*}
    ```

### 10. Crea dos archivos vacíos llamados privado.txt y publico.txt y cambia los permisos según las siguientes instrucciones

- publico.txt debe poder ser leído y modificado por todo el mundo, aunque solo podría ser ejecutado por el usuario y por los miembros del grupo.
- privado.txt solo podrá ser leído, modificado y ejecutado por el propietario, los miembros del grupo solo podrán leerlo y otros usuarios no podrán hacer nada.

    ```bash
    cd ~
    touch privado.txt publico.txt
    sudo chmod 776 publico.txt
    sudo chmod 740 privado.txt
    ```

### 11. Lista solo los nombres de los archivos de la ruta /bin mostrándolos pantalla a pantalla y ordenados de forma alfabéticamente inversa

    ```bash
    cd /bin
    ls -r | less
    ```

### 12. Lista los archivos de la ruta /bin según los siguientes criterios avanzados

- Archivos que terminan en r o en s.
- Archivos que tienen exactamente 4 letras y su tercera letra es una c.
- Archivos cuyos dos últimos caracteres son una vocal y un número.

    ```bash
    cd /bin
    ls | egrep "s$|r$"
    ls | egrep ^[a-z]{2}c[a-z]$
     ls | egrep "[aeiou][0-9]$"
    ```
