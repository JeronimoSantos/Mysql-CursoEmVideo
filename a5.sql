-- CÓDIGO DA AULA 05 - INSERRINDO DADOS NA TABELA COM (INSERT INTO)

INSERT INTO humanos (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('JejeDev', '2004-04-13', 'M', '75.50', '1.71', 'Brasil');

-- QUANDO AS VALORES ESTÃO NA MESMA POSIÇÃO QUE AS COLUNAS, NÃO PRECISA INFORMAR OS CAMPOS NO INÍCIO
INSERT INTO humanos 
VALUES (DEFAULT, 'Monica', '2000-03-22', 'F', '65.70', '1.59', 'Alemanha');

-- MAIS DE UMA PESSOA
INSERT INTO humanos
VALUES (DEFAULT, 'Cleber', '1999-05-10', 'M', '80.00', '2.00', 'Russia'),
(DEFAULT, 'João', '2008-07-22', 'M', '75.00', '1.78', 'Mexico');

SELECT * FROM humanos;
