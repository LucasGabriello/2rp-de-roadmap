-- Criando tabela externa para ingestão do csv

create external table work_dataeng.pokemon_lucas_temp (
        idnum   int,
        name string,
        hp  int,
        speed   int,
        attack  int,
        special_attack  int,
        defense int,
        special_defense int,
        generation  int
        ) row format delimited fields terminated by ','
        stored as textfile tblproperties ("skip.header.line.count"="1");
    
-- Carregando daddos do csv na tabela
  
load data inpath 'hdfs://bigdataclu-ns/user/2rp-lucasa/pokemon.csv' into table work_dataeng.pokemon_lucas_temp;

-- Erro ocorrido devido a falta de permissões

/*

Error while compiling statement: FAILED: SemanticException No valid privileges User 2rp-lucasa does not have privileges for LOAD The required privileges: Server=server1->URI=hdfs://bigdataclu-ns/user/2rp-lucasa/pokemon.csv->action=*->grantOption=false;

*/