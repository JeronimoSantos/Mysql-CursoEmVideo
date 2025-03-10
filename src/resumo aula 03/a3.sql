-- CÓDIGO DA AULA 03 - CRIANDO O PRIMEIRO BANCO DE DADOS

CREATE DATABASE cadastro;
USE cadastro;

CREATE TABLE humanos (
	nome VARCHAR(30),
    idade TINYINT,
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(30)
);

CREATE TABLE pets (
	nome_pet VARCHAR(20),
    idade_pet TINYINT,
    sexo_pet CHAR(1),
    altura_pet FLOAT,
    pelagem VARCHAR(20)
);

CREATE TABLE alimentos (
	nome_alimento VARCHAR(30) NOT NULL,
    peso_alimento DECIMAL(5,2),
    cor_alimento VARCHAR(20),
    preco_alimento DECIMAL(5,2),
    tipo_embalagem VARCHAR(30)
);

-- DESCRIBE pets;
-- DESCRIBE pessoas;
-- DESCRIBE alimentos;

-- DROP DATABASE cadastro;
