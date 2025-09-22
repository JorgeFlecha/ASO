#!/bin/bash
i=0
until [$i -eq 1000]
do
resultado=$((i + 1))
echo $resultado
done
