#!/bin/bash

# Progama por Nisamov y Lobo_233

# Declaracion de variables

#Iniciacion de progama
echo "Que desea hacer: "
echo "Opcion 1: Crear directorio"
echo "Opcion 2: Eliminar directorio"
echo "Opcion 3: Clonar directorio"
read -p "Ingrese su opcion: " opcion

if [[ $opcion -eq 1 ]]; then
    echo "Ha seleccionado la opcion 1"

elif [[ $opcion -eq 2 ]]; then
    echo "Ha seleccionado la opcion 2"

elif [[ $opcion -eq 3 ]]; then
    echo "Ha seleccionado la opcion 3"

else
    echo "No se ha ingresado un valor valido [del 1 al 3]."
fi
