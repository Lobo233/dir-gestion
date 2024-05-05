#!/bin/bash

# Program Script by Nisamov & Lobo_233

# Variable declaration
function menu(){
# Menu function
echo "| [Directory Gestion] |"
echo "| [Options]:"
echo "| Option '1' > Create directory"
echo "| Option '2' > Remove directory"
echo "| Option '3' > Clone directory"
read -p "Ingrese su opcion: " opcion
}

function createdirectory(){
    read -p "Enter directory's name: " directoryname
    read -p "Enter directory's creation route [Absolute route]: " rutedirectory
    # Dir creation with dir's name in dir's route
    sudo mkdir $directoryname $rutedirectory
    # Use example:
    # dirgestion directorioejemplo /usr/local/sbin
}

function deletedirectory(){
    # Ask data to user
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
