# SCC-0540-PetOng

<!-- <img src="exemplo-image.png" alt="exemplo imagem"> -->

> Projeto da Disciplina de Bases de Dados, trata-se de um sistema de adoção de animais.
## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

* Você instalou a versão mais recente de `python` e `pip` no seu computador. caso não tenha, siga o tutorial de instalação do [python](https://www.python.org/downloads/).

* Você instalou o Oracle Instant Client. caso não tenha, siga o tutorial de instalação do [Oracle Instant Client](https://www.oracle.com/database/technologies/instant-client/winx64-64-downloads.html).

## 🚀 Instalando <SCC-0540-PetOng>

Para instalar o <SCC-0540-PetOng>, siga estas etapas:

rode o comando `pip install -r requirements.txt` para instalar as dependências do projeto.

## ☕ Usando <SCC-0540-PetOng>

Para usar <SCC-0540-PetOng>, siga estas etapas:

crie um arquivo .env na raiz do projeto e coloque as seguintes variáveis de ambiente:

```
DB_HOST=host
DB_PORT=port
DB_SERVICE_NAME=service
DB_USER=user
DB_PASSWORD=password

INSTANT_CLIENT_PATH=
```

onde `host` é o host do banco de dados, `port` é a porta do banco de dados e `service` é o nome do serviço do banco de dados, `user` é o usuário do banco de dados e `password` é a senha do banco de dados Oracle.

***ATENÇÃO***: SOMENTE se você estiver usando o Windows, coloque o caminho do instant client na variável `INSTANT_CLIENT_PATH`. 

Exemplo: `INSTANT_CLIENT_PATH=C:\Users\Desktop\instantclient_19_8`

Para rodar o projeto, rode o comando `python app.py` ou `python3 app.py` no terminal estando na raiz do projeto.

[⬆ Voltar ao topo](#SCC-0540-PetOng)<br>