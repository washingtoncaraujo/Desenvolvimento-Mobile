# ProjetoSemana8_v2
 Mehoria no projeto v1


Washington Carlos Araújo


Desenvolvimento Back-end II
Express + MySQL
Agenda:
● Qual é o desafio?
● O que deve ser entregue?
● Aprendizados com o desafio
● Avaliação
● Quando deve ser entregue?
2
Desenvolvimento Back-end II
● Crie uma aplicação com node.js que tenha:
○ As seguintes dependências: cookie-parser, debug, dotenv, express, http-errors, 
jade, morgan, mysql2
○ As seguintes dependências de desenvolvedores: eslint, eslint-config-google, 
nodemon
○ Seja um repositório do público do GitHub
○ Um endpoint que responde a GET no caminho padrão “/”
○ Dois endpoints “/clientes” e “/produtos” que respondem a GET, POST, PUT e 
DELETE
○ Os endpoints devem realizar operações no banco de dados
Qual é o Desafio? (Parte 1)
3
Desenvolvimento Back-end II
● Aplicação deve manipular um banco de dados com 2 tabelas
● A tabela clientes deve conter as seguintes colunas: 
○ id, nome, sobrenome, email e idade
● A tabela produtos deve conter as seguintes colunas:
○ id, nome, descricao, preco, data_atualizado
● id e idade devem ser INT
● nome, sobrenome, email, descricao dever ser VARCHAR
● preco DECIMAL e data_atualizado DATETIME
Qual é o Desafio? (Parte 2)
4
Desenvolvimento Back-end II
● Os arquivos devem ser estruturados da seguinte forma:
○ configs/ -> arquivos de configuração
○ controllers/ -> arquivos que vão tratar da lógica de negócios (receber requisição e responder)
○ middlewares/ -> validações de campos das requisições
○ models/ -> arquivos sql para criação de banco de dados, tabelas e inserção de dados
○ routes/ -> APIs e endpoints
○ services/ -> chamadas ao banco de dados
○ views/ -> camada de apresentação
● 5 arquivos obrigatórios e atualizados na raiz do projeto: 
○ .env, .eslintrc.json, .gitignore, package.json, README.md
Qual é o Desafio? (Parte 3)
5
Desenvolvimento Back-end II
Visão Geral da Arquitetura
6
Desenvolvimento Back-end II
www app.js routes middlewares
configs services controllers
servidor handler apis/ 
endpoints
validações
regras de 
negócios
chamadas 
ao banco 
de dados
conexão 
com banco 
de dados
● O arquivo .eslintrc.json deve ter no máximo 5 regras, por exemplo:
Qual é o Desafio? (Parte 4)
7
Desenvolvimento Back-end II
...
"rules": {
 "object-curly-spacing": 0,
 "new-cap": 0,
 "space-before-function-paren": 0,
 "linebreak-style": [ "error", "windows" ],
 "indent": [ "error", 4]
 }
...
● Um vídeo ou link público do vídeo com no máximo 5 minutos que você:
○ Mostre a aplicação no GitHub 
○ Mostre a árvore de arquivos do projeto 
○ Mostre o arquivo do lint e rode o comando para executar o lint
○ Rode o comando git status no terminal
○ Mostre as tabelas do banco de dados com os dados inseridos
○ Mostre o resultado de todos os endpoints em uma ferramenta (cURL, Postman, etc)
■ /clientes -> GET, POST, PUT, DELETE
■ /produtos -> GET, POST, PUT, DELETE
○ OPCIONAL: Explique como a aplicação funciona enquanto mostra os demais pontos
O que deve ser entregue?
8
Desenvolvimento Back-end II
● Todo o desafio foi dado em aula
○ Seu real desafio é montar as peças do quebra-cabeça
● Com esse desafio testamos vários conceitos, habilidades e ferramentas 
vistos em sala de aula
○ Modularização (MVC), padrões de código, etc.
○ REST APIs e endpoints
○ Criação de um servidor
○ Git, GitHub, node.js, npm, express, etc
Observe que
9
Desenvolvimento Back-end II
● [0.25 pontos] Mostrou a aplicação no GitHub 
● [0.5 ponto] Mostrou a árvore de arquivos do projeto e ter o que foi pedido 
● [2 pontos] Mostre o arquivo do lint e execute o lint (obs: penalidade erros e excesso de regras)
● [0.25 pontos] Rode git status no terminal (obs: penalidade p/ arquivos não comitados)
● [1 ponto] Mostre as tabelas do banco de dados com os dados (Workbench, Xampp, etc)
● Mostre o resultado de todos os endpoints em uma ferramenta (cURL, Postman, etc)
○ [1.5 pontos] /clientes -> GET, POST, PUT, DELETE
○ [1.5 pontos] /produtos -> GET, POST, PUT, DELETE
● [1 ponto] Validação dos campos de clientes e produtos 
Como vai ser a avaliação?
10
Desenvolvimento Back-end II
● Domingo 25/06 às 23:59
● E se eu atrasar? Zero
● Pontos Extra: 
○ 1 ponto p/ mostrar frontend 
○ 1 ponto p/ mostrar os sql scripts