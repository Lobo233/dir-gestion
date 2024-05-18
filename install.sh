# No tocar - Responsable: Nisamov
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Mientras no exista el fichero, tratar de instalarlo
while [[ ! -f "/usr/local/sbin/dirgestion" ]]; do
        # Copiar el fichero en la ruta
        sudo cp "$SCRIPT_DIR/ProgramFiles/dirgestion.sh" "/usr/local/sbin/dirgestion"
        # Si ya se ha instalado, indicar lo siguiente
        if [[ -f "/usr/local/sbin/dirgestion" ]]; then
            echo "Programa instalado correctamente"
        else
            echo "Ha ocurrido un error en la instalacion"
        fi
done