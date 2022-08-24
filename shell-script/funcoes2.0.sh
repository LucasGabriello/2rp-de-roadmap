#!/bin/bash

lista_arquivos(){
    #entrada do diretório
    echo -n "Digite seu diretório: "
    read direto
    
    #guarda o retorno dos caminhos percorridos recursivamente 
    vet=($(ls -R ./$direto))

    for index in "${!vet[@]}"
    do
       #lista arquivos
       echo "$index"  "${vet[$index]}"
	 #echo ${var%:}
       
       #guarda apenas os caminhos sem o ":" do retorno
       if [ ${vet[$index]:0:1} = . ]; then
	      list+=(${vet[$index]%:})
       fi

    done
}

lista_arquivos



echo "=============================================="



insere_texto(){
    #list="$(find . -name "*.txt")"

for index in "${!list[@]}"
    do
	 echo "${list[$index]}"
       echo "p" > `${list[$index]}`/*.txt
    done
}

#insere_texto

for index in "${!list[@]}"
    do
       echo "${list[$index]}"
    done

echo "ls"




 