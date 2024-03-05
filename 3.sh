#!/bin/bash

nombre=$1
modulo=$2

estudiante=$(grep "$nombre $modulo" notas.txt)

nota=$(echo $estudiante | awk '{print $3}')

if (( $(echo "$nota < 5"))); then
    echo "Suspendido"
elif (( $(echo "$nota >= 5 && $nota < 9"))); then
    echo "Aprobado"
else
    echo "Sobresaliente"
fi