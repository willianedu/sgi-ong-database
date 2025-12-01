-- Criação das tabelas para o Sistema SGI-ONG

CREATE TABLE VOLUNTARIO (
    id_voluntario INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE PROJETO (
    id_projeto INT PRIMARY KEY,
    titulo VARCHAR(100),
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE DOADOR (
    id_doador INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf_cnpj VARCHAR(18),
    email VARCHAR(100)
);

CREATE TABLE DOACAO (
    id_doacao INT PRIMARY KEY,
    data DATE,
    valor DECIMAL(10, 2),
    id_doador INT,
    id_projeto INT,
    FOREIGN KEY (id_doador) REFERENCES DOADOR(id_doador),
    FOREIGN KEY (id_projeto) REFERENCES PROJETO(id_projeto)
);

CREATE TABLE ALOCACAO (
    id_alocacao INT PRIMARY KEY,
    id_voluntario INT,
    id_projeto INT,
    data_entrada DATE,
    horas_trabalhadas INT,
    FOREIGN KEY (id_voluntario) REFERENCES VOLUNTARIO(id_voluntario),
    FOREIGN KEY (id_projeto) REFERENCES PROJETO(id_projeto)
);