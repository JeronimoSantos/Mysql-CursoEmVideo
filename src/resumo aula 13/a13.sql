-- CÓDIGO DA AULA 13 - SELECT DIFERENÇA ENTRE O USO DO ( DISTINCT, GROUP BY E HAVING )

SELECT * FROM humanos;

SELECT nome, COUNT(*) FROM humanos
GROUP BY nome; 

SELECT nome, COUNT(*) FROM humanos
WHERE peso between '75.00' AND '80.00'
GROUP BY nome
having nome <> 'Joao'
ORDER BY nome DESC;

SELECT AVG(altura) FROM humanos;

SELECT nome, COUNT(*) FROM humanos
WHERE nacionalidade = 'Brasil'
GROUP BY nome
HAVING nome > (SELECT AVG(altura) FROM humanos);


-- EXERCICIOS SELECT GUANABARA 2

-- 01
SELECT prof AS habilidades, COUNT(*) FROM humanos
GROUP BY prof;

-- 02 
SELECT sexo, COUNT(*) FROM humanos 
WHERE nascimento > '2005-01-01'
GROUP BY sexo
HAVING sexo;

-- 03
INSERT INTO humanos (hobby, nome, prof, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('tiros', 'Beanca', 'policial', '2003-12-02', 'F', '68.20', '1.70', 'Russia');

SELECT nacionalidade, COUNT(*) FROM humanos
WHERE nacionalidade <> 'Brasil'
GROUP BY nacionalidade
HAVING nacionalidade AND COUNT(*) = 3;

-- 04
SELECT AVG(altura) FROM humanos;
SELECT * FROM humanos;

SELECT altura, COUNT(*) FROM humanos
WHERE peso > '50'
GROUP BY altura
having altura > (SELECT AVG(altura) FROM humanos);
