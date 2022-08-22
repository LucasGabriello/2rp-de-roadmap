<h1>Fundamentos Hadoop</h1>
<p>

## Hadoop - estrutura de software para processamento de dados de forma distribuida
</p>

<p>
O Hadoop é uma coleção de subprojetos relacionados para computação distribuída, sendo todos eles hospedados pela Apache Software Foundation. Por possuir o código aberto, ele permite modificações relacionadas às necessidades de cada um, tal como é visto em larga escala com as distribuições Linux. Com isso, verifica-se a existência de alguns projetos privados, baseados no Hadoop que não são hospedados pela Apache. Já o próprio tem suas origens no Apache Nutch, um motor de pesquisa online juntamente com vários outros elementos, como o GDFS (Google Distributed FileSystem). sendo portados para funcionar com o modelo MapReduce, sendo fundidos no projeto Hadoop. incorporado pela Yahoo e utilizado em larga escala.
</p>

<h3>Tipo de dados</h3>
<p>
>TEXTO: Padrão em ferramentas como Hive
>Sequence File: Chave-valor binário <br/> Podem sere divididos ou unidos facilmente
>AVRO: Formato binário para serialização <br/> Ótimo para troca de dados
>ORC: Colunar otimizado para consultas de linhas <br/> Formato "favorito" do ecossistema Hadoop
>RC: Orientado a coluna, chave-valor <br/> ALta taxa de compressão em linha
>Parquet: Orientado a colunas <br/> Binário
</p>



### Hadoop - estrutura de software para processamento de dados de forma distribuida

</p>

<p>
O Hadoop é uma coleção de subprojetos relacionados para computação distribuída, sendo todos eles hospedados pela Apache Software Foundation. Por possuir o código aberto, ele permite modificações relacionadas às necessidades de cada um, tal como é visto em larga escala com as distribuições Linux. Com isso, verifica-se a existência de alguns projetos privados, baseados no Hadoop que não são hospedados pela Apache. Já o próprio tem suas origens no Apache Nutch, um motor de pesquisa online juntamente com vários outros elementos, como o GDFS (Google Distributed FileSystem). sendo portados para funcionar com o modelo MapReduce, sendo fundidos no projeto Hadoop. incorporado pela Yahoo e utilizado em larga escala.
</p>
<hr/>

<h3>Map-Reduce</h3>

<p>
<h4>Input / Split</h4>
O leitor de entrada divide os dados em 'blocos' de tamanhos adequados e o framework atribui um bloco para cada função de mapeamento. O leitor lê os dados de entrada de um sistema de armazenamento estável e gera pares chave / valor.

<h4>Map</h4>
A função Map, ou função de mapeamento, leva uma série de pares (chave / valor) processa cada um e gera zero ou mais (chave / valor) pares de saída. Os tipos de entrada e de saída do mapa podem ser diferentes umas das outras. Cada par de saída deve conter o dado como a chave e o número de ocorrências desse dado na linha como o valor.

<h4>Shuffling</h4>
Cada resultado da função Map é alocada para um redutor determinado por funçoes de partição, dando a chave e o número de redutores e retorna o índice de reduzir o desejado.  Entre o mapa e reduzir as fases, os dados são baralhados a fim de mover os dados a partir do nó do mapa que produziu o fragmento em que ele vai ser reduzida. Sendo que a entrada para cada Reduce é retirado da máquina onde o Mapeamento ocorreu e classificados usando funções de comparação do aplicativo.

<h4>Reduce</h4>
O quadro chama Reduzir função da aplicação uma vez para cada chave única na ordem de classificação. O Reduce pode percorrer os valores que estão associados com a chave e produzir zero ou mais saídas. No exemplo a contagem de palavras, a função Reduce toma os valores de entrada, resume-os e gera uma única saída da palavra e a soma final.

</p>

![image](https://user-images.githubusercontent.com/22823453/184931935-90cb0d9e-8b1f-4e11-b12f-a96a0da48003.png)

<hr/>
<h3>Tipo de dados</h3>
<p>

>TEXTO: Padrão em ferramentas como Hive

>Sequence File: Chave-valor binário <br/> Podem sere divididos ou unidos facilmente

>AVRO: Formato binário para serialização <br/> Ótimo para troca de dados

>ORC: Colunar otimizado para consultas de linhas <br/> Formato "favorito" do ecossistema Hadoop

>RC: Orientado a coluna, chave-valor <br/> ALta taxa de compressão em linha

>Parquet: Orientado a colunas <br/> Binário

</p>

<hr/>


<h3>Principais comandos:</h3>

<div align="center">
<table>
<b>
  <tr>
  <td>Comando</td>
  <td>Descrição</td>
  <td>Parâmetro</td>
  <td>Executando</td>
  </tr>
</b>
  <tr>
  <th>-ls</th>
  <th>Lista conteúdo do diretório</th>
  <th>-d listagem simples </br> -R recursivo</th>
  <th>hdfs dfs -ls -R/</th>
  </tr>

  <tr>
  <th>-put</th>
  <th>Copia arquivo do sistema local para o hdfs</th>
  <th></th>
  <th>hdfs dfs -put /user/arqu.txt </br> /delta/arq.txt</th>
  </tr>

  <tr>
  <th>-mv</th>
  <th>Move o ardquivo ou mdiretório do sihstema local para o hdfs</th>
  <th></th>
  <th>hdfs dfs -mv input.txt /user</th>
  </tr>

  <tr>
  <th>-rm</th>
  <th>Remove arquivo ou pasta</th>
  <th>-r exclui de forma rescursiva</th>
  <th>hdfs dfs -rm/user/input.txt</th>
  </tr>

  <tr>
  <th>-du</th>
  <th>Verifica tamanho do arquivo</th>
  <th></th>
  <th>hdfs dfs -du input.txt /user</th>
  </tr>

  <tr>
  <th>-cat</th>
  <th>Exibe o conteúdo do arquivo</th>
  <th></th>
  <th>hdfs dfs -cat /user/input.txt</th>
  </tr>

  <tr>
  <th>-mkdir</th>
  <th>Cria uma pasta</th>
  <th>-p cria caminho</th>
  <th>hdfs dfs -mkdir /user/diretorio</th>
  </tr>

  <tr>
  <th>-rmdir</th>
  <th>Remove um didretókrio</th>
  <th></th>
  <th>hdfs dfs -rmdir /user/diretorio</th>
  </tr>

  <tr>
  <th>-tail</th>
  <th>Mostra parte final do arquivo</th>
  <th></th>
  <th>hdfs dfs -tail /user/input.txt</th>
  </tr>

  <tr>
  <th>-count</th>
  <th>Conta o número de diretórios, arquivos etc.</th>
  <th></th>
  <th>hdfs dfs -count /user</th>
  </tr>

  <tr>
  <th>-setrep</th>
  <th>Altera o fator de replicação de um arquivo</th>
  <th></th>
  <th>hdfs dfs -setrep 3 </br> /user/input.txt</th>
  </tr>

  <tr>
  <th>-stat</th>
  <th>Informa estatistica do arquivo ou diretório</th>
  <th>%F: tipo </br> %n: nome </br> %r: fator de replicação </br> %y: data de modificação</th>
  <th>hdfs dfs -stat %F /user/input.txt</th>
  </tr>

  <tr>
  <th>-fsck</th>
  <th>Verifica o estado do sistema de arquivos</th>
  <th></th>
  <th>hdfs dfs -fsck / </th>
  </tr>

</table>
</div> 