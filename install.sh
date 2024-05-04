# Sacado de: https://github.com/Nisamov/autonetplan/blob/main/install.sh
# Ruta del directorio donde se encuentra el script de instalación
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


    fi
fi