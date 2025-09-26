#!/bin/bash
suma=0
while true; do

read -p "Introduce un número: " num
if [ $num -eq 0 ]; then
	echo "El último número de la suma es: "$suma 
break
fi
suma=$((num + suma))
echo $suma
done
