#!/bin/bash

source ./funcoes.sh


executar(){

    echo -n "Digite seu diretório: "
    read diret
lista_arquivos "$diret"

    echo -n "Digite um texto: "
    read texto
insere_texto "$texto"



}
executar