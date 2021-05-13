#!/bin/bash

read -p "Digite o nome do arquivo: " arq
for i in $arq;
do
	if [ ${i} = "a" ];
	then
		echo "Removendo todas as letras do arquivo."
		sed -E -e 's/[a-zA-Z]//g' $arq

	elif [ ${i} = "b" ];
	then
		echo "Removendo digitos do arquivo."
		sed -E -e 's/[0-9]//g' $arq

	elif [ ${i} = "c" ];
	then
		echo "Substituindo caracteres que não são letras e digitos por <?>."
		sed -E -e 's/[[:punct:]]?/<?>/g' -e 's/^[ ]+/<?>/g' $arq
	fi
done
