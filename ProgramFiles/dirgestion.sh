#!/bin/bash

# Progama por Nisamov y Lobo_233


# Declaracion de variables

function optionmenu(){
# Funcion de menu
echo "| [Directory Gestion] |"
echo "| [Options]:"
echo "| Option '1' > Create directory"
echo "| Option '2' > Remove directory"
echo "| Option '3' > Clone directory"
echo "| Option '4' > Backup"
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

function backupdirectory(){
    # Crear copia de seguridad del directorio
    read -p "Ingrese la ruta del fichero a guardar: " clonedirectory
    read -p "ingrese la ruta de destino: " directorydestination
    # Donde va el directorio
    sudo cp -r "$clonedirectory" "$directorydestination.bk"
}

# Llamamos a la funcion optionmenu
optionmenu

if [[ $opcion -eq 1 ]]; then
    # Opcion1 > Crear directorio
    echo "Ha seleccionado la opcion 1"
    # Llamar a la funcion createdirectory
    createdirectory

elif [[ $opcion -eq 2 ]]; then
    # Opcion2 > Eliminar directorio
    echo "Ha seleccionado la opcion 2"
    deletedirectory

elif [[ $opcion -eq 3 ]]; then
    # Opcion3 > Clonar directorio
    echo "Ha seleccionado la opcion 3"
    clonedirectory

elif [[ $opcion -eq 4 ]]; then
    # Opcion4 > Copia de seguiridad del directorio
    echo "Ha seleccionado la opcion 4"
    backupdirectory
else
    echo "No se ha ingresado un valor valido [del 1 al 4]."
fi
