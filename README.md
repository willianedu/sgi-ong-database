# Sistema de Gestão Integrada - SGI-ONG

Este repositório contém os scripts SQL desenvolvidos para a disciplina de Modelagem de Banco de Dados. O projeto simula o banco de dados da "ONG União Social", focado na gestão de voluntários, projetos e doações.

## Estrutura do Projeto

O projeto está dividido em quatro scripts sequenciais:

1.  **1_create_tables.sql**: Estrutura DDL (criação das tabelas e relacionamentos).
2.  **2_inserts.sql**: Comandos DML para popular o banco com dados fictícios.
3.  **3_selects.sql**: Consultas SQL utilizando `JOIN`, `WHERE`, `ORDER BY` e Agregações.
4.  **4_update_delete.sql**: Exemplos de manipulação de dados com `UPDATE` e `DELETE`.

## Modelo Lógico

O sistema foi normalizado até a 3FN e contém as seguintes entidades:
* **VOLUNTARIO**: Dados cadastrais dos voluntários.
* **PROJETO**: Iniciativas sociais da ONG.
* **DOADOR**: Pessoas e empresas parceiras.
* **DOACAO**: Registro financeiro das contribuições.
* **ALOCACAO**: Tabela associativa que vincula Voluntários a Projetos.

## Como Executar

1.  Abra seu SGBD (MySQL Workbench, PGAdmin ou DB Fiddle).
2.  Crie um novo banco de dados (`CREATE DATABASE sgi_ong;`).
3.  Execute os scripts na ordem numérica (1 a 4).

## Autor
[Willian Eduardo Oliveira dos Santos](https://github.com/willianedu)