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

    echo "==================== Caminhos Guardados ==================="

    #lista caminhos guardados
    for index in "${!list[@]}"
    do
       echo "${list[$index]}"
    done


}



insere_texto(){

 echo "==================== Alterando Arquivos ==================="

    for index in "${!list[@]}"
    do
       #echo "p" >> ${list[$index]}/*.txt
	 echo "arquivos txt de ${list[$index]} alterados"
    done
}




 