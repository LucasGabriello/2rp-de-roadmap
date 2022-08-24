#!/bin/bash

lista_arquivos(){
    echo -n "Digite seu diretório: "
    read direto

    vet=($(ls -R ./$direto))

    for index in "${!vet[@]}"
    do
       echo "$index"  "${vet[$index]}"
    done
}

lista_arquivos

echo "====================="

insere_texto(){
    list="$(find . -name "*.TS")"
}

insere_texto

for index in "${!list[@]}"
    do
       echo "$list"  "${list[$index]}"
    done

echo $list



 