<h1>Fundamentos Hadoop</h1>
</p>
> Hadoop - estrutura de software para processamento de dados de forma distribuida
</p>
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