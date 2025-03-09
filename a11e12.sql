-- CÓDIGO DA AULA 11, 12 - SELECT PART 01, 02

-- SELECT * FROM cursos
-- ORDER BY descricao DESC

SELECT nome, carga, ano FROM cursos 
ORDER BY nome DESC;

-- usar order by para organizar de formar cresente ou decresente
SELECT * FROM humanos 
ORDER BY nome;

-- usa o where para filtrar linhas:
SELECT nome, nascimento, peso FROM humanos
WHERE peso >= 75.00;

-- operador entre between
SELECT ano FROM cursos
WHERE ano BETWEEN 2016 AND 2024;

SELECT * FROM cursos
WHERE ano IN (2016, 2024);

-- comando operador parecido 'like'
SELECT * FROM cursos
WHERE nome LIKE 'P%';

-- comando para não repetir 
SELECT DISTINCT nome FROM humanos
ORDER BY nome;

-- função de agregação count
SELECT COUNT(*) FROM cursos;

-- comando para poder ver o total 'max' e 'min'
SELECT MAX(carga) FROM cursos;
SELECT MIN(carga) FROM cursos;

-- comando para somar 'sum'
SELECT SUM(carga) FROM cursos;

-- comando para tirar a media 'avg'
SELECT AVG(carga) FROM cursos;


-- EXERCICIOS SELECT GUANABARA
-- 01
SELECT * FROM humanos;

SELECT * FROM humanos
WHERE sexo = 'F';

-- 02
SELECT DISTINCT nome FROM humanos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

-- 03
SELECT DISTINCT * FROM humanos
WHERE sexo = 'm';

-- 04

INSERT INTO humanos (hobby, nome, prof, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('serie', 'Jhul', 'medica', '2004-12-20', 'F', '64', '1.61', 'Brasil');

SELECT nome FROM humanos
WHERE nacionalidade = 'Brasil' 
AND sexo = 'f'
AND nome LIKE 'J%';

-- 05

INSERT INTO humanos (hobby, nome, prof, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('box', 'Moura silva', 'lutador', '2010-07-07', 'M', '85', '1.83', 'Ingles');

SELECT nome, nacionalidade FROM humanos
WHERE sexo = 'm'
AND nome LIKE '%silva%'
AND nacionalidade NOT IN ('Brasil')
AND peso < 100;

-- 06
SELECT MAX(altura) FROM humanos
WHERE sexo = 'm' AND nacionalidade = 'Brasil';

-- 07
SELECT AVG(peso) FROM humanos;

-- 08
SELECT MIN(peso) FROM humanos
WHERE nacionalidade BETWEEN '1990-01-01' AND '2000-10-31';

-- 09
SELECT * FROM humanos
WHERE sexo = 'F'
AND altura <= '1.90';
