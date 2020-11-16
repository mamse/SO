#!/bin/bash

#5 split é rating 6 é consultas

cat medicos.txt|awk -F ";" '$5<5 && $6>6  {print $0 >"lista_negra_medicos.txt"}'
 

cat lista_negra_medicos.txt
