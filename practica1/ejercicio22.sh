#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Introduce un directorio con ruta completa."
	exit
fi
carpeta=$1
if [ ! -d "$carpeta" ]; then
	echo "$carpeta no es un directorio válido, prueba con poner la ruta completa." 
	exit
fi
cont=0
for entry in "$carpeta"/*; do
	if [ -f "$entry" ]; then
		echo "$(basename "$entry") = fichero"
	elif [ -d "$entry" ]; then
		echo "$(basename "$entry") = carpeta"
	fi
	contador=$((contador + 1))
done
