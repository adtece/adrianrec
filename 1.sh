#!/bin/bash

nota=$1

if (( $(echo "$nota < 5"))); then
    echo "Suspendido"
elif (( $(echo "$nota >= 5 && $nota < 9"))); then
    echo "Aprobado"
else
    echo "Sobresaliente"
fi