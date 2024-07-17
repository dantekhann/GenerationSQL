-- ATIVIDADE 02 -------------------------------------------
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
cor VARCHAR(255) NOT NULL,
validade DATE,
quantidade INT, 
preco DECIMAL (6,2) NOT NULL, 
PRIMARY KEY(id));

DESCRIBE tb_produtos;

INSERT INTO tb_produtos (nome, tipo, cor, validade, quantidade, preco) VALUES
("Vibrador Luxo Telescópico Vai e Vem 10 modos de vibração", "vibrador", "rosa", "2099-12-31", 15, 89.90),
("Vibrador Luxo Telescópico Vai e Vem 10 modos de vibração", "vibrador", "vermelho", "2099-12-31", 12, 89.90),
("Pênis Pinto Dildo Em Silicone com Ventosa", "consolo", "transparente", "2099-12-31", 11, 24.90),
("Pênis Pinto Dildo Em Silicone com Ventosa", "consolo", "roxo", "2099-12-31", 5, 24.90),
("Pênis Pinto Dildo Em Silicone com Ventosa", "consolo", "rosa", "2099-12-31", 19, 24.90),
("Vibrador Feminino Ponto G Clitóris Estimulador Snappy", "vibrador", "rosa", "2099-12-31", 10, 39.90),
("Vibrador e Massageador Aveludado Golfinho", "vibrador", "rosa", "2099-12-31", 35, 14.90),
("Lubrificante Hot Morango Beijável", "lubrificante", "xxx", "2026-07-05", 32, 22.90),
("KMed 2 em 1 Gel de Massagem e Lubrificante Íntimo 203g", "lubrificante", "xxx", "2027-02-24", 24, 26.90),
("Lingerie Sexy Body Renda com Aro Feminino", "lingerie", "branco", "2099-12-31", 8, 29.90);

SELECT nome FROM tb_produtos WHERE preco > 500.00;

SELECT nome FROM tb_produtos WHERE preco < 500.00;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_produtos SET preco = 120.00 WHERE nome = "Vibrador Luxo Telescópico Vai e Vem 10 modos de vibração";

SELECT * FROM tb_produtos;