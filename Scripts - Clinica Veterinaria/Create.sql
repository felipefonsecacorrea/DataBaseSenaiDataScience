create database bd_clinica;

use bd_clinica;

create table tb_veterinario(
 id int(10) not null,
 nome varchar(100) not null,
 especialidade varchar(100) not null,
 telefone varchar(20) not null,
 primary key (id)
);

create table tb_cliente(
	id int(10) not null,
 	nome varchar(100) not null,
	endereco varchar(255) not null,
	telefone varchar(20) not null,
    primary key(id)
);

create table pets(
	id int(10) not null,
    nome varchar(100) not null,
	tipo varchar(100) not null,
	raca varchar(100) not null,
	data_nascimento date not null,
	id_cliente int(10) not null,
    primary key(id),
    foreign key (id_cliente) references tb_cliente(id)
    );
    
create table tb_atendimento(
	id int(10) not null,
	id_pet int(10) not null,
	id_veterinario int(10) not null,
	data_atendimento date not null,
	descricao varchar(255),
    primary key(id),
    foreign key (id_pet) references pets(id),
    foreign key (id_veterinario) references tb_veterinario(id)
);