#!/bin/bash

read -p "Informe o seu cpf: " cpf

#criei um arquivo teste fora do script com o nome CPF para verificar se a resolução está correta.

sed -r 's/([0-9]){2,3}/**CENSURADO**/g' $cpf

