create database db_biblioteca;

use db_biblioteca;

create table tb_autores(
	id int(10) not null,
    nome varchar(100) not null,
    data_nascimento date not null,
    primary key(id)
);

create table tb_livros(
	id int(10) not null,
    titulo varchar(100) not null,
    ano_publicacao date not null,
    id_autor int(10) not null,
    primary key(id),
    foreign key (id_autor) references tb_autores(id)
);

create table tb_membros(
	id int(10) not null,
    nome int(10) not null,
    data_adesao date not null,
    primary key (id)
);

create table tb_emprestimo(
	id int(10) not null,
	id_membros int(10) not null,
	id_livro int(10) not null,
	data_emprestimo date not null,
	data_devolucao date not null,
    primary key (id),
    foreign key (id_membros) references tb_membros(id),
    foreign key (id_livro) references tb_livros(id)
);

