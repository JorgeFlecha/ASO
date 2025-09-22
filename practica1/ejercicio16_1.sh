#!/bin/bash
while [[ $resultado -lt 1000 ]]
do
	resultado=$((resultado + 1))
	echo $resultado
done
