#!/bin/bash

# Installation script by Nisamov

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Var declaration
main_file="/usr/local/sbin"

# Proceso de instalacion de programa

# See if program is installed
if [[ -f $main_file/dirgestion ]]; then
    # If exist say:
    echo "[#] Program already exist"
else
    # If doesnt
    echo "[#] Program does not exist"    
    # Request for install
    read -p "Do you want to install the program? [y/n]: " requestinstallation
    if [[ $requestinstallation == "y" || $requestinstallation == "Y" ]]; then
        echo "[#] Starting download, this may took a while..."
        # Start installation
        # Search for dirgestion.sh
        while [[ ! -f $SCRIPT_DIR/ProgramFiles/dirgestion.sh ]]; do
            # While program does not exist, clone it in /usr/local/sbin
            sudo cp "$SCRIPT_DIR/ProgramFiles/dirgestion.sh" "$main_file"
            if [[ -f "$SCRIPT_DIR/ProgramFiles/dirgestion.sh" ]]; then
                # Say that exist
                echo "[#] Program found, cloning..."
            else
                echo "[#] There was something wrong..."
                echo "[#] Trying again in 2s..."
                sleep 2
            fi
        done
    else
        echo "[#] Installation cancelled."
    fi
fi