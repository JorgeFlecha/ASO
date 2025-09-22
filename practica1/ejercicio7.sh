#!/bin/bash
read -p "Introduce un directorio: " carpeta
fecha=$(date +%F)
echo $fecha
tar -cvf "${fecha}-${carpeta}.tar.gz" "$carpeta"
ls "$fecha.tar.gz"
