# Comandos Linux 5

## Implementa un programa que muestre el siguiente menu

```bash
-MENU-
1. Crear usuario
2. Borrar usuario
3. Mostrar información del usuario
4. Modificar información del usuario
0. Salir
```

### A continuación se muestra información acerca de cómo funciona cada opción

Si el usuario escoge la primera opción, el programa primero pedirá por pantalla información necesaria (mirar a continuación) y en base a esa información, creará en usuario. Ojo: lo que no se pregunta, se deja que el sistema lo genere por defecto. Ejemplo:

```bash
Indique el nombre de usuario: paco
Indique la información extra de usuario: Paco Gutiérrez
Indique la ruta para el home del usuario: /home/pguti
El usuario paco ha sido generado correctamente
```

Si se escoge la opción 2, bastará con preguntar por el nombre de usuario a eliminar, y luego el programa lo borrará. Ejemplo:

```bash
Indique el nombre de usuario a borrar: paco
El usuario paco ha sido eliminado correctamente
```

Si se escoge la opción 3, el sistema preguntará por el nombre de usuario a cosultar y mostrará por pantalla toda la información que recabe de /etc/passwd. Ejemplo:

```bash
Indique el nombre de usuario a consultar: paco
INFO USER: paco
INFO UID: 1003
INFO GID: 1000
INFO COMENTARIOS: Paco Gutiérrez
INFO HOME: /home/paco
INFO SHELL: /bin/bash
```

Finalmente, si se escoge la opción 4, el sistema preguntará qué dato se desea modificar, y luego por la nueva información a modificar (solo se podrá modificar el campo comentarios o la ruta de home. Ejemplo:

```bash
Indique el nombre de usuario a modificar: paco
Indique el campo a modificar [C o H]: H
Indique los datos nuevos: /home/paco
El usuario paco ha sido correctamente modificado
```

No olvides que el programa debería ser capaz de identificar opciones incorrectas distintas de 1,2,3,4,0 y no debería de finalizar hasta que se escoja la opción 0. No hace falta identificar errores de introducción de datos en otros lados, se supondrá que el usuario lo va a usar bien
