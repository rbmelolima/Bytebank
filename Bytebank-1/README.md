# Bytebank

"Ao logo das aulas, aprendemos diversas técnicas comuns no desenvolvimento em Flutter, com alguns passos a mais em relação aos fundamentos dessa ferramenta. Por exemplo, descobrimos como manter as informações da usuária ou usuário (mesmo fechando ou reiniciando o aplicativo), como fazer a integração com o banco de dados envolvendo comportamentos assíncronos, e assim por diante.

No início do curso, trabalhamos no aplicativo oficial do Bytebank criando um novo fluxo baseado tanto no Dashboard, quanto na lista de contatos e até um formulário para adicionar novos itens. Conhecemos então algumas peculiaridades ainda desconhecidas, como o caso de enviar uma imagem para exibirmos logotipo para a tela, algo que pode ser feito via rede, via asset ou via arquivos.

Em seguida, quando estávamos implementando o fluxo, tivemos a necessidade de modificar o layout adicionando separação entre os elementos, margens, ajuste de dimensões, cores, fontes e tamanho de texto. O próprio Column() dá suporte para estes ajustes por meio da configuração de alinhamento de seus eixos (principal e transversal).

Prosseguindo, implementamos a lista e o formulário, dessa vez com uma nova integração, complementando o que foi visto no curso anterior. Agora o aplicativo não apenas cria e apresenta conteúdo em memória, mas também armazena essas informações por meio do plugin sqflite, o qual utiliza a solução do banco de dados SQLite por debaixo dos panos.

Em Flutter, descobrimos que existem diversas opções para fazer persistência de dados, seja pelo banco, por arquivos ou por shared preferences ("chave-valor"). No nosso caso, como trabalhamos com dados estruturados que fazem uso de queries, o sqflite foi bastante benéfico.

Encontramos diversos desafios durante a configuração do novo plugin. Primeiro, aprendemos a colocar dependências no projeto em pubspec.yaml, onde utilizamos também o path, que nos permitiu trabalhar com os caminhos de diretórios de cada um dos ambientes (seja Android ou iOS). Depois disso, configuramos o banco por meio do arquivo app_database.dart, no qual vimos as pecualirades do trabalho com Future, then() e a técnica async/await.

Por fim, conhecemos o padrão de projeto DAO, bastante comum e que nos permitiu separar responsabilidades que antes se concentravam em um único arquivo.

Em relação às novidades visuais, usamos a técnica do FutureBuilder para atualizarmos conteúdos dentro dos widgets, o que eliminou a necessidade de transformarmos o widget que representa a tela em um StatefulWidget. Desta forma, descobrimos um novo meio de buscar dados e atualizar a tela."