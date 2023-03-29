#!/bin/bash

TOKEN=""
CHAT_ID=""

while true
 do
    # El archivo de entrada
  INPUT_FILE="frases.txt"

# El archivo de salida
  OUTPUT_FILE="limpio.txt"

# Eliminar todas las lineas en blanco
  grep -v '^$' $INPUT_FILE > $OUTPUT_FILE


    while IFS= read -r line
    do
    
    curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="${line//[0-9]/}"

    done < limpio.txt
    rm ./frases.txt
    touch ./frases.txt
    python3 ./main.py
    sleep 1200

done