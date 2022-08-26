# -*- encoding: utf-8 -*-
from pyspark.sql import SparkSession
spark = SparkSession.builder.getOrCreate()
from pyspark.sql.dataframe import DataFrame
import pyspark.sql.functions

#3.1. carregue os dados das tabelas pokemon e generation em dois dataframes distintos
df_pokemon = spark.table("work_dataeng.pokemon_lucas")
df_generation = spark.table("work_dataeng.generation_lucas")

#3.2. filtre o dataframe com os dados de generation para pegar somente as gerações inferiores a 2002-11-21, e em seguida faça um cache deste dataframe;
df_generation = df_generation.filter("date_introduced < '2002-11-21'")
df_generation = df_generation.cache()

#3.3. em um novo dataframe atribua o inner join entre generation e pokemon;
df_pok_gen = df_pokemon.join(df_generation, 'generation', how = 'inner')
df_pok_gen.show()

#3.4. por fim, salve o novo dataframe em uma tabela chamada work_dataeng.pokemons_oldschool_lucasa.
df_pok_gen.write.saveAsTable('work_dataeng.pokemons_oldschool_lucasa', format="orc")