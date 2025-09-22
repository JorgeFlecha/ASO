#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Debes poner 2 parámetros."
    echo "$0 origen destino"
    exit 1
fi

origen=$1
destino=$2

if [ ! -f "$origen" ]; then
    echo "El archivo origen '$origen' no existe."
    exit 1
fi

if [ -e "$destino" ]; then
    echo "Ya existe un fichero con el
nombre '$destino'."
    exit 1
fi

cp "$origen" "$destino"
echo "Copia realizada con éxito"
