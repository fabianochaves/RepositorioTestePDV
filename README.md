# PDV
Sistema PDV - Teste

1. Buscando facilitar a execução do sistema, em resumo basta seguir 3 passos:

    1.1. Docker Desktop instalado e rodando no seu computador "https://www.docker.com/products/docker-desktop/".

    1.2. Clonar o repositório "git clone https://github.com/fabianochaves/RepositorioTestePDV.git".

    1.3. Abra o Terminal na raiz da pasta clonada, e suba os containers do Docker, utilizando o comando "docker-compose up -d".

    1.4. Acesse http://localhost:8000, utilize o usuário e senha "teste" para iniciar a navegação na tela de login.

    Pronto, com isso o sistema estará em operação, com o front-end, back-end e banco de dados prontos.
    
    Nos próximos tópicos segue explicações mais detalhadas.
    
############################################################

2. Passos para rodar o sistema.

    2.1. Download do Docker Desktop, caso ainda não possua: "https://www.docker.com/products/docker-desktop/".

    2.2. Deixe o Docker Desktop inicializado em sua máquina.

    2.3. Criar uma pasta em seu computador, para realizar o clone do repositório.

    2.4. Clone o Repositório -> "git clone https://github.com/fabianochaves/RepositorioTestePDV.git".

    2.5. Após clonar, uma pasta chamada RepositorioTestePDV foi criada, com todos os arquivos do repositório.

    2.6. Abra o CMD e navegue até a raiz da pasta RepositorioTestePDV -> "cd RepositorioTestePDV".

    2.7. Ainda no CMD, rode o comando "docker-compose up -d" para iniciar os containers (Esse processo demora um pouco).

    2.8. Após concluído o comando no item 7, verifique no Docker Desktop, se está ativo o container "repositoriotestepdv" (back-end, front-end, postgres e pgadmin)
    
        OBS: Inicializado os containers com sucesso, a aplicação já está com o servidor todo configurado para rodar o Sistema PDV, não precisa configurar mais nada.

    2.9. Abra no Navegador http://localhost:8000 e abrirá a tela de login.

    2.10. Navegue pelo sistema, utilizando o usuário: teste e senha: teste.

    2.11. Para acessar o PGAdmin, acesse http://localhost:8080, usuario: fabianochavesg@gmail.com e senha: 123. 
    
    2.12. No PGAdmin, para acessar o banco de dados "pdv", utilize o usuário: pdv e senha: 123.

############################################################

3. Seguindo os passos acima para rodar o sistema, as configurações criadas para o Docker farão o seguinte:

    3.1. Criação do servidor Apache back-end com PHP 7.4

    3.2. Criação do front-end;

    3.3. Criação do banco de dados Postgres;

    3.4. Criação do PGadmin;

    3.5. Exportação automatica do backup da base de dados para o banco Postgres.

    OBS: As configurações citadas acima, poderão ser vistar nos arquivos docker-compose.yml, dockerfile, dockerfileRestore e dockerize.yml

############################################################

4. Instruções caso não consiga logar no sistema:

    4.1. Verifique se o banco de dados foi restaurado, senão importe o manualmente do caminho "backup/db-postgre-pdv.tar".

############################################################

5. Instruções caso não consiga rodar com o docker:

    5.1. Os fontes estão na pasta "app/".

    5.2. O backup do banco de dados está no caminho: "backup/db-postgre-pdv.tar".

    5.3. Lembrando, que com o docker, a aplicação está lendo a pasta "app/front-end" como raiz.

    5.4. No arquivo "app/front-end/config.js" está setada a variável "urlBackEnd", que no caso se rodar manual, terá que mudar para "../back-end".

############################################################

6. Acessos:

    6.1. Front-End: http://localhost:8000 -> usuário: teste e senha: teste

    6.2. Back-End: http://localhost:8001 -> Sem acesso via Browser.

    6.3. PGAdmin: http://localhost:8080 -> usuario: fabianochavesg@gmail.com e senha: 123

    6.4. Postgres: Porta: 5432, usuário: pdv, senha: 123

############################################################

7. Observação Final:

    7.1. Atualmente, o sistema ainda não está validando sessão de usuário logado.


