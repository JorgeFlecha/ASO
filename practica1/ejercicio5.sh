#!/bin/bash

read -p "Introduce un numero: " num1
read -p "Introduce otro numero: " num2
resultado=$((($num1+$num2)/2))
echo $resultado
