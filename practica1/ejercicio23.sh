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
        if [ -h "$entry" ]; then
                echo "Enlace simbólico"
        elif [ -b "$entry" ]; then
                echo "Archivo especial en bloque"
	elif [ -c "$entry" ]; then
                echo "Archivo especial de carácter"
	elif [ -d "$entry" ]; then
                echo "Carpeta"        
	elif [ -f "$entry" ]; then
                echo "Archivo"
	else
		tipo="Otro"
fi
	echo "$(basename "$entry") = tipo"
	contador=$((contador + 1))
done
