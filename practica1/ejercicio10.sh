#/bin/bash
read -p "Introduce un número: " n1

if (( $n1 % 2 == 0 )); then
echo "Es par"
else
echo "Es impar"
fi
