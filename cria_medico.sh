#!/bin/bash

#nome=$1
#n de cedula profissional=$2
#especialidade medica=$3
#e-mail=$4

rating=0
nconsultas=0
saldo=0

if ! grep $2 medicos.txt
  then
	echo "$1;$2;$3;$4;$rating;$nconsultas;$saldo" >> medicos.txt
else
	echo "já existe!"
fi

cat medicos.txt
