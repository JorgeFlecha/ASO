#!/bin/bash
num=32
while true; do
read -p "Que número crees que es, sino introduce un 0 para salir: " numuser
if [ $numuser -gt $num ]; then
	echo "El número que has introducido es mayor que el que tienes que adivinar."
elif [[ $numuser -lt $num && $numuser -ne 0 ]]; then
	echo "El número que has introducido es menor que el que tienes que adivinar."
elif [  $numuser -eq $num ]; then
	echo "Enhorabuena, has adivinado el número."
	break
elif [ $numuser -eq 0 ]; then
	break
fi
done
