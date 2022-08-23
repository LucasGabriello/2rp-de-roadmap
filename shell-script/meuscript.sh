#!/bin/bash

lista_arquivos(){
vet=`ls -R ./ $1`
}
echo -n "Digite seu diretório: "
read _diret

lista_arquivos "$_diret"

echo "========="
echo ${vet[1]}
