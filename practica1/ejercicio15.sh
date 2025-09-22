#!/bin/bash
read -p "Introduce un número para sacar su tabla de multiplicar: " n

for i in {1..10}; do
resultado=$((i * n))
echo "$i x $n es igual a $resultado"
done
