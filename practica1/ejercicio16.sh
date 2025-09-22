#!/bin/bash
resultado=0
for ((i=1; i<=1000; i++)); do
resultado=$((i + resultado))
echo "$i + $resultado = a $resultado" 
done


