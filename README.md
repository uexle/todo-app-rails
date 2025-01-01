# Todo App

Este projeto é um gerenciador de listas de tarefas a serem feitas. Ele permite gerenciar listas que podem conter múltiplos itens. Tanto as listas quanto os itens podem ser criados, editados e excluídos.

## Funcionalidades

- Criar, editar e excluir listas de tarefas
- Criar, editar e excluir itens dentro das listas

## Tecnologias

- Ruby on Rails
- PostgreSQL

## Como Rodar o Aplicativo (Ambiente de desenvolvimento)

Para rodar o aplicativo é necessário ter um banco de dados PostgreSQL e ajustar os parâmetros para conexão no arquivo ./config/database.yml. Após isso, na pasta raiz do projeto, basta executar:

```sh
rails server
```