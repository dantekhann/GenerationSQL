-- ATIVIDADE 01 --------------------------------------
create database db_empresa; 
use db_empresa;

create table tb_colaboradores (
id bigint auto_increment,
nome varchar(255) not null,
data_admissao date,
setor varchar(255) not null, 
cargo varchar(255) not null,
salario decimal(8, 2) not null,
primary key(id));

DESCRIBE tb_colaboradores;

INSERT INTO tb_colaboradores (nome, data_admissao, setor, cargo, salario) VALUES
("Ana Maria da Silva", "2019-09-09", "financeiro", "analista", 4200.00),
("Joana Ferreira Pinto", "2023-03-15", "financeiro", "assistente", 2600.00),
("Tânia Mesquita Nóbrega", "2017-04-11", "recursos_humanos", "gerente", 4600.00),
("André Soares da Gama", "2023-06-05", "comercial", "assistente", 1800.00),
("Lídia Fernando Carvalho", "2024-03-08", "administrativo", "estagiario", 900.00);

SELECT * FROM tb_colaboradores;

select nome from tb_colaboradores where salario > 2000.00;

select nome from tb_colaboradores where salario < 2000.00;

SET SQL_SAFE_UPDATES = 0;

update tb_colaboradores set salario = 1200.00 where salario < 1000.00;

update tb_colaboradores set salario = 2600.00 where cargo = "assistente";