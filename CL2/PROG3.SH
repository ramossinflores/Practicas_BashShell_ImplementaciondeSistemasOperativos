#! /bin/bash
read -p "Introduce un nombre: " usuario
sudo usermod -c "$usuario" $(whoami)