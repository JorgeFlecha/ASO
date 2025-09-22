#!/bin/bash
archivo="lista.txt"

    echo "===== MENÚ AGENDA ====="
    echo "1) Añadir"
    echo "2) Buscar"
    echo "3) Listar"
    echo "4) Ordenar"
    echo "5) Borrar"
    echo "6) Salir"
    read -p "Elige una opción: " opcion

    case $opcion in
        1)
            read -p "Nombre: " nombre
            read -p "Dirección: " direccion
            read -p "Teléfono: " telefono
            echo "$nombre | $direccion | $telefono" >> "$archivo"
            echo "Registro añadido."
            ;;
        2)
            read -p "Introduce un texto para buscar: " buscar
            grep -i "$buscar" "$archivo" 2>/dev/null || echo "No se
encontraron resultados."
            ;;
        3)
            if [ -f "$archivo" ]; then
                cat "$archivo"
            else
                echo "La agenda está vacía."
            fi
            ;;
        4)
            if [ -f "$archivo" ]; then
                sort "$archivo" -o "$archivo"
                echo "Agenda ordenada alfabéticamente."
            else
                echo "La agenda está vacía."
            fi
            ;;
        5)
            rm -f "$archivo"
            echo "Agenda borrada."
            ;;
        6)
            echo "Saliendo del script"
            exit 0
            ;;
        *)
            echo "Opción no válida."
            ;;
    esac
