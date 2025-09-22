#!/bin/bash

if [ $# -lt 4 ]; then
    echo "La sintaxis correcta es: $0 alta/baja nombre
apellido1 apellido2 [grupo]"
    exit 1
fi

accion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

id="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"
id=$(echo "$id" | tr '[:upper:]' '[:lower:]')

if [ "$accion" == "alta" ]; then
    if [ -z "$grupo" ]; then
        grupo=$id
        sudo groupadd "$grupo"
    fi
    sudo useradd -m -g "$grupo" -c "$nombre $apellido1 $apellido2" "$id"
    echo "Usuario $id creado y asignado al grupo:  $grupo."
elif [ "$accion" == "baja" ]; then
    sudo userdel -r "$id"
    echo "Usuario $id eliminado."
else
    echo "La sintaxis correcta es: $0 alta/baja nombre
apellido1 apellido2 [grupo]"
    exit 1
fi
