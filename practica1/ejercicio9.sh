#!/bin/bash
echo "Bienvenido al menú de matemáticas, elige una opción: 1-Sumar, 2-Restart, 3-Multiplicar, 4-Dividir."
read -p "Elige una opcion: " opcion
read -p "Introduce un número: " n1
read -p "Introduce otro número: " n2
case $opcion in
	"1")
		resultado=$(($n1 + $n2))
		echo $resultado
	;;
	"2")
                resultado=$(($n1 - $n2))
                echo $resultado
	;;
	"3")
		resultado=$(($n1 * $n2))
		echo $resultado
	;;
	"4")
		resultado=$(($n1 / $n2))
		echo $resultado
	;;
esac
