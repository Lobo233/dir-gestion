#!/bin/bash

# Progama por Nisamov y Lobo_233


# Declaracion de variables

function menu(){
# Funcion de menu
echo "| [Directory Gestion] |"
echo "| [Options]:"
echo "| Option '1' > Create directory"
echo "| Option '2' > Remove directory"
echo "| Option '3' > Clone directory"
read -p "Ingrese su opcion: " opcion
}

function createdirectory(){
    read -p "Ingrese el nombre a dar al directorio: " directoryname
    read -p "Ingrese la ruta a crear el directorio [Ruta absoluta]: " rutedirectory
    # Creamos el directorio en la ruta indicada por el usuario
    sudo mkdir $directoryname $rutedirectory
    # Ejemplo de uso:
    # dirgestion directorioejemplo /usr/local/sbin
}

function deletedirectory(){
    # Solicitar datos al usuario
    read -p "Ingrese la ruta absoluta del directorio a eliminar: " deletedirectory
    # Eliminar ruta de forma recursiva y forzosa
    sudo rm -rf $deletedirectory
}

function clonedirectory(){
    # Solicitar datos al usuario
    read -p "Ingrese la ruta absoluta del directorio a clonar: " clonedirectory  
    read -p "Ingrese la ruta de destino: " directorydestination
    # Clonar directorio
    sudo cp -r $clonedirectory $directorydestination
}


# Llamamos a la funcion menu 'menu'
menu

if [[ $opcion -eq 1 ]]; then
    # Opcion1 > Crear directorio
    echo "You have selected 'first option' (Create directory)."
    # Llamar a la funcion createdirectory
    createdirectory

elif [[ $opcion -eq 2 ]]; then
    # Opcion2 > Eliminar directorio
    echo "You have selected 'second option' (Remove directory)."

elif [[ $opcion -eq 3 ]]; then
    # Opcion3 > Clonar directorio
    echo "You have selected 'third option' (Clone directory)."
    clonedirectory
else
    echo "No data was found [select a number between 1 and 3]."
fi
