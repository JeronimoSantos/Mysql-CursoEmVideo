-- CÓDIGO DA AULA 04 - MELHORANDO A ESTRUTURA DO BANCO DE DADOS

CREATE DATABASE cadastro_2
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE humanos (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM ('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    primary key (id)
) DEFAULT CHARSET = utf8;

CREATE TABLE comidas (
	id INT NOT NULL AUTO_INCREMENT,
	nome_alimento VARCHAR(30) NOT NULL,
    peso_alimento DECIMAL(5,2),
    cor_alimento VARCHAR(20),
    preco_alimento DECIMAL(5,2),
    tipo_embalagem VARCHAR(30),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS alimentos;

-- DESCRIBE humanos;
-- DESCRIBE comidas;
