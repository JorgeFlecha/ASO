#!/bin/bash
carpeta="$1"
if [ ! -d $1 ]; then
	echo "El directorio no existe."
else
	tree "$carpeta"
fi
