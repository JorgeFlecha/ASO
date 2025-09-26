#!/bin/bash
n=$1
i=2
while [ $((i*i)) -lt $n ]; do
	if [ $((n%i)) -eq 0 ]; then
		echo "$n no es primo"
		exit
	fi
	i=$((i+1))
done
echo "$n es primo"
