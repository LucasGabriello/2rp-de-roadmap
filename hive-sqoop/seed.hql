-- Criando tabela externa temporária para ingestão do csv

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


-- Necessário realocar o arquivo csv para o mesmo diretório onde será feita a execução do codigo com o comando

-- hdfs dfs -cp pokemon.csv /user/work_dataeng/warehouse/work_dataeng.db/

-- tentando carregar dados do csv na tabela temporária
  
load data inpath 'hdfs://bigdataclu-ns/user/2rp-lucasa/pokemon.csv' into table work_dataeng.pokemon_lucas_temp;

-- Erro ocorrido devido a falta de permissões

/*

Error while compiling statement: FAILED: SemanticException No valid privileges User 2rp-lucasa does not have privileges for LOAD The required privileges: Server=server1->URI=hdfs://bigdataclu-ns/user/2rp-lucasa/pokemon.csv->action=*->grantOption=false;

*/

/*
--------------------- Executado pelo DevOps --------------------

load data inpath '/user/work_dataeng/warehouse/work_dataeng.db/pokemon.csv' into table work_dataeng.pokemon_lucas_temp;

--------------------------- Sucesso!!! -------------------------
*/

--Insere Dados da tabela temporaria na tabela ORC
INSERT INTO pokemon_lucas SELECT * FROM pokemon_lucas_temp;


------------------ Join Para tabelas comapração -----------------

SELECT pl.*, gl.date_introduced
FROM pokemon_lucas as pl
LEFT JOIN  generation_lucas as gl
    on pl.generation = gl.generation;

-- Impala: Tempo médio 1s
-- Hive: Tempo médio 50s
