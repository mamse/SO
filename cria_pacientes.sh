#!/bin/bash


#identificacao=$1
#nome=$5
#localidade
#nº telemóvel
#saldo=100

grep ^a[0-9] /etc/passwd|head -10|sed 's/^.//' > pacientes.txt
 
cat pacientes.txt| awk -F: '{print ($1";"$5";;;"$1"@iscte-iul.pt"";"100) >"pacientes.txt"}'
