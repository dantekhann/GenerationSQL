CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	classe VARCHAR(255) NOT NULL,
	habilidade VARCHAR(255) NOT NULL    
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    raca VARCHAR(255),
    ataque INT,
    defesa INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);
  
INSERT INTO tb_classes(classe, habilidade) VALUES
("Bárbaro", "Fúria"),
("Mago", "Magia Branca"),
("Feiticeiro", "Magia Negra"),
("Bardo", "Música"),
("MOnge", "Meditação");

iNserT INTO TB_Personagens(nome, racA, ataQue, defEsa, claSse_id) valUeS
('Muradin Barbabronze', 'AnÃo', 4500, 2700, 1),
('Kaelthas Sunstrider', 'ElfO', 3000, 2500, 2),
('Tyrion Silvermoon', 'HumAno', 1750, 1550, 3),
('Ilidan Stormtempest', 'ElfO', 5000, 3450, 4),
('Brann Barbabronze', 'AnãO', 1800, 1650, 5),
('Sylvanas Windrunner', 'Elfo', 700, 550, 4),
('Lost Vikings', 'Anão', 1900, 1750, 1),
('Jaina Proudmore', 'HumanO', 1650, 1500, 3);

SElECt * FROM tB_PERSonagens where atAQUE > 2000;

sELECt * FROM tB_PERSonagens where deFESA between 1000 ANd 2000;

sELECt * FROM tB_PERSonagens where noME LIKE "%c%";

SELECT *
FROM tB_PERSonagens INNER JOIN TB_CLASses 
ON tb_peRSonagens.classe_Id = tb_claSses.id;

SELECT 
    *
FROM
    TB_personagens
        INNER JOIN
    TB_classes ON tb_peRSonagens.classe_Id = tb_claSses.id
WHERE
    CLAsse_id = 3;