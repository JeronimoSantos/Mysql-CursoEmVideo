-- CÓDIGO DA AULA 07 - MANIPULANDO LINHAS (UPDATE, DELETE, TRUNCATE)

INSERT INTO cursos VALUE 
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2024'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2024'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2024'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução á Linguagem Java', '10', '29', '2000'),
('6', 'MYSQL', 'Bancos de Dados MYSQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer KIbe', '40', '30', '2018'),
('10', 'YouTube', 'Gerar polêmica e ganha inscritos', '5', '2', '2018');

UPDATE cursos SET nome = 'HTML5' WHERE idcursos = '1';
UPDATE cursos SET nome = 'PHP', ano = '2015' WHERE idcursos = '4';
UPDATE cursos SET nome = 'Java', ano = '2015', carga = '40' WHERE idcursos = '5' LIMIT 1;

DELETE FROM cursos WHERE idcursos = '8';
DELETE FROM cursos WHERE ano = '2018' LIMIT 2;

-- TRUNCATE CURSOS - PARA DELETAR TODOS OS DADOS DA TABELA;

SELECT * FROM cursos;
