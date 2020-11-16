#!/bin/bash

localidade="$1"
valor_min=$2


pacientes_local=$(cat pacientes.txt | cut -d ';' -f3 |grep -c $localidade)

echo "Existem $pacientes_local pacientes em $localidade"


medicos_sup=$(cat medicos.txt | cut -d ';' -f8 | sort| awk -v x=$valor_min '$NF>x' |wc -l)

echo "Existem $medicos_sup médicos com saldo superior a $valor_min"
