-- criando a base de dados
create database bd_carro;

use bd_carro;

drop database carro;

create table tb_carro(
	id int(10) not null,
    modelo varchar(100) not null,
    marca varchar(100) not null,
    valor decimal(10,2) not null,
    cor varchar(50) not null,
    numero_vendas int(10) not null,
    ano int(5),
    primary key(id)
);

select * from tb_carro;

create table tb_proprietario(
	id int(10) not null,
    nome varchar(100) not null,
    id_carro int(10) not null,
    primary key(id),
    foreign key(id_carro) references tb_carro(id)
);

select * from tb_proprietario;

create table historico_preco(
	id int(10) not null auto_increment,
    data_modificacao datetime,
    velor_anterior float(10),
    valor_novo float(10),
    id_carro int(10) not null,
    primary key(id),
    foreign key(id_carro) references tb_carro(id)
);

use bd_carro;

alter table tb_proprietario add idade int(3) not null;

select * from tb_proprietario;

