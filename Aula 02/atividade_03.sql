-- ATIVIDADE 03 -------------------------------------------
CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
matricula VARCHAR(255) NOT NULL,
serie VARCHAR(255) NOT NULL,
turma INT NOT NULL, 
nota_matematica DECIMAL,
nota_portugues DECIMAL, 
nota_ciencias DECIMAL,
nota_geografia DECIMAL,
nota_historia DECIMAL,
PRIMARY KEY(id));

DESCRIBE tb_estudantes;

INSERT INTO tb_estudantes (nome, matricula, serie, turma, nota_matematica, nota_portugues, nota_ciencias, nota_geografia, nota_historia) VALUES
("Maradona", "20244217", "2º ano - Ensino Médio", 1, 10, 9.8, 9.7, 9.8, 10),
("Pelé", "20244229", "2º ano - Ensino Médio", 2, 8.0, 8.5, 9.0, 7.0, 8.0),
("Juninho Pernambucano", "20244225", "2º ano - Ensino Médio", 2, 10, 10, 10, 10, 10),
("Ronaldo", "20244223", "2º ano - Ensino Médio", 2,  10, 9.8, 7.5, 8.0, 7.0),
("Ronaldinho", "20244218", "2º ano - Ensino Médio", 1, 7.5, 8.0, 7.0, 7.5, 6.8),
("Miguel Arango", "20244219", "2º ano - Ensino Médio", 1, 10, 9.0, 8.0, 10, 10),
("Celina Ferrer", "20244213", "2º ano - Ensino Médio", 1, 7.5, 10, 8.8, 9.8, 10),
("Giovanni Mendez", "20244227", "2º ano - Ensino Médio", 2, 6.7, 8.5, 8.8, 7.9, 9.0);

SELECT nome FROM tb_estudantes WHERE nota_matematica OR nota_portugues OR nota_ciencias OR nota_geografia OR nota_historia < 7.0;

SELECT nome FROM tb_estudantes WHERE nota_matematica OR nota_portugues OR nota_ciencias OR nota_geografia OR nota_historia > 7.0;