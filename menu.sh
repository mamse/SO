#!/bin/bash

#eu reparei que no cria_medicos o primeiro argumento e o 2o tem aspas e o 3o e o 4o nao pelo que cada argumento tem uma aspa e posso delimitar 
#f [ -z "$x" ]; then
#echo "a string está vazia"

while :; do
	echo "
1. Cria pacientes
2. Cria médicos
3. Stats
4. Avalia médicos
0. Sair
"
echo -n "Escolha uma opcao do menu: ";
read opcao

	case $opcao in
	0) break;;
	1) './cria_pacientes.sh';;
	2) echo -n "Insira nome:"
read nome
echo -n "Insira  cédula:"
read cedula
echo -n "Insira  especialidade médica:"
read especialidade
echo -n "Insira email:"
read email

'./cria_medico.sh' "$nome"  "$cedula" "$especialidade" "$email"
;;
	3)
echo -n "Localidade:"
read localidade
echo -n "saldo minimo:"
read saldo_min
'./stats.sh' "$localidade" "$saldo_min" ;;
	4) './avalia_medicos.sh';;
	esac

	done

