#!/bin/bash

archivo="notas.txt"
aprobados=0
suspendidos=0

while IFS= read -r linea; do
    nota=$(echo $linea | awk '{print $3}')
    
    if [ $nota -ge 5 ]; then
        aprobados=$((aprobados + 1))
    else
        suspendidos=$((suspendidos + 1))
    fi
done < $archivo

echo "Hay $aprobados aorobados"
echo "Hay $suspendidos suspendidos"