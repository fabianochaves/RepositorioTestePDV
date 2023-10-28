# PDV
Sistema PDV - Teste

Observações Gerais:

    a) O código-fonte desse repositório está dentro da pasta app, separado o back-end e o front-end.
    b) O repositório está com arquivos e configurações prontas para inicializar os containers no Docker e rodar a aplicação, basta seguir os passos abaixo.

Passos para rodar o sistema.

1. Download do Docker Desktop, caso ainda não possua: https://www.docker.com/products/docker-desktop/.
2. Deixe o Docker Desktop inicializado em sua máquina.
3. Criar uma pasta em seu computador, para realizar o clone do repositório.
4. Clone o Repositório "git clone https://github.com/fabianochaves/RepositorioTestePDV.git".
5. Abra o CMD e navegue até a pasta raiz que criou no passo 3.
6. No CMD, rode o comando docker-compose up -d
7. Após concluído o comando do item 6, verifique no Docker Desktop, se está ativo o container "pdv" (back-end, front-end, postgres e pgadmin)
    OBS: Inicializado os containers com sucesso, a aplicação já está com o servidor todo configurado para rodar o Sistema PDV, não precisa configurar mais nada.
8. Abra no Navegador http://localhost:8000 e abrirá a tela de login.
9. Navegue pelo sistema, utilizando o usuário: teste e senha: teste.
10. Para acessar o banco de dados, acesse http://localhost:8080, usuario: fabianochavesg@gmail.com e senha: 123.
11. 

Acessos:

1. Front-End: http://localhost:8000 -> usuário: teste e senha: teste
2. Back-End: http://localhost:8001 -> Sem acesso via Browser.
3. PGAdmin: http://localhost:8080 -> usuario: fabianochavesg@gmail.com e senha: 123
4. Postgre: Porta: 5432, usuário: pdv, senha: 123


