create database db_biblioteca;
use db_biblioteca;

create table tb_autores(
id int(10) not null,
nome varchar(100) not null,
data_nascimento date not null,
primary key (id)
);

create table tb_livros(
	id int(10) not null,
    titulo varchar(100) not null,
	ano_publicacao int(100) not null,
	id_autor int(10) not null,
    primary key (id),
    foreign key (id_autor) references tb_autores(id)
);