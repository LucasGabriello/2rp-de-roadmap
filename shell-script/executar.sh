#!/bin/bash

lista_arquivos(){
echo -n "Digite seu diretório: "
read direto

vet=($(ls -R ./$direto))

for index in "${!vet[@]}"
do
   echo  "${vet[$index]}"
done
}


lista_arquivos



 