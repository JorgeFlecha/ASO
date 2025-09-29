#!/bin/bash
verificar() {
	local archivo="$1"
	if [ -f "$archivo" ]; then
		echo "El archivo existe."
		chmod u+x,g-x,o-x "$fichero"
		echo "Se han cambiado los permisos para que solo el propietario pueda ejecutar."
	else
		echo "El fichero no existe."
}

verificar "$1"
