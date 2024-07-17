-- Consulta SQL avançada -- 

-- asc = ascendente --

use db_quitanda;

select * from tb_produtos order by nome asc;

select * from tb_produtos order by quantidade asc;

-- desc = descendente --

select * from tb_produtos order by nome desc;

-- between = intervalo  começa do menor para o maior--

select * from tb_produtos where preco between 5 and 12;

-- o símbolo de % procura a palavra pelo início do registro --
select * from tb_produtos where nome like "la%";
-- aceita acentos --
select * from tb_produtos where nome like "pê%";

select * from tb_produtos where nome like "uva";

select * from tb_produtos ;

-- resumo de toda a estrutura da tabela com suas regras e restrições se não tirar vai ficar retornando esse resultado --
-- show create table tb_produtos;

-- Associações entre Tabelas --

create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

select * from tb_categorias;

INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");
INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");
INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
-- INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid);
-- VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);
INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);
INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

select * from tb_categorias;

insert into tb_categorias (descricao) values ("Temperos"),("Ovos"),("Outros");

-- Modificando a estrutura da tabela - criando o relacionamento

alter table tb_produtos add categoriaid bigint;

-- fk significa foreign key, boas práticas --
alter table tb_produtos add constraint fk_produtos_categorias foreign key (categoriaid) references tb_categorias (id);











