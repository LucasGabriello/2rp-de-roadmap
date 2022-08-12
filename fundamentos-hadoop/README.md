<h1>Fundamentos Hadoop</h1>
</p>
<h3>Principais comandos:</h3>

<div align="center">
<table>
  <tr>
  <th>Comando</th>
  <th>Descrição</th>
  <th>Parâmetro</th>
  <th>Executando</th>
  </tr>
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

</table>
</div> 