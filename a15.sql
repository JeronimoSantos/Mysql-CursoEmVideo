-- CÓDIGO DA AULA 15 E 16 - CHAVES ESTRANGEIRAS E JOINS

-- COMANDO PARA ADICIONAR CHAVE ESTRANGEIRA
DESCRIBE humanos;

ALTER TABLE humanos ADD COLUMN comidasfood int;

ALTER TABLE humanos 
ADD FOREIGN KEY (comidasfood)
REFERENCES comidas (id);

SELECT * FROM humanos;
SELECT * FROM comidas;

INSERT INTO comidas (nome_alimento, peso_alimento, cor_alimento, preco_alimento, tipo_embalagem)
VALUES ('Queijo', '0.40', 'Amarelo', '0.50', 'Plastico');

-- LIGANDO A TABELA COMIDAS COM HUMANOS
UPDATE humanos SET comidasfood = '1' WHERE id = '9';

-- DELETE FROM comidas WHERE id = '';

-- CÓMANDO INNER JOIN
SELECT humanos.nome, comidas.nome_alimento, comidas.peso_alimento
FROM humanos JOIN comidas ON humanos.comidasfood = comidas.id
ORDER BY humanos.nome;

-- AULA 16

CREATE TABLE h_assiste_c (
	id INT NOT NULL AUTO_INCREMENT,
    cursos_id INT,
    humanos_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (humanos_id) REFERENCES humanos (id),
    FOREIGN KEY (cursos_id) REFERENCES cursos (idcursos)
);

ALTER TABLE h_assiste_c DROP COLUMN hora;

INSERT INTO h_assiste_c (id, cursos_id, humanos_id)
VALUES (DEFAULT, '1', '5');

SELECT DISTINCT h.nome, c.nome FROM humanos AS h
LEFT JOIN h_assiste_c AS ass
ON ass.id = h.id
JOIN cursos AS c ON ass.id = c.idcursos;

SELECT * FROM humanos;
SELECT * FROM cursos;
SELECT * FROM h_assiste_c;
DESC h_assiste_c;
