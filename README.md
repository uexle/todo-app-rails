# Todo App

Este projeto é um gerenciador de listas de tarefas. Ele permite, para cada usuário, criar, editar e excluir listas e itens de tarefas.

## Funcionalidades

- Autenticação
- Criar, listar, editar e excluir listas de tarefas
- Criar, editar, ordenar e excluir itens em diferentes listas

## Tecnologias

- Ruby on Rails
- TailwindCSS
- PostgreSQL

## Como Rodar o Aplicativo (Ambiente de Desenvolvimento)

Para rodar o aplicativo, é necessário ter um banco de dados PostgreSQL, Ruby e Bundler instalados. Ajuste os parâmetros de conexão no arquivo `./config/database.yml`. Em seguida, na pasta raiz do projeto, execute os seguintes comandos:

```sh
bundle install
```

```sh
rails db:migrate
```

```sh
rails assets:precompile
```

```sh
rails server
```