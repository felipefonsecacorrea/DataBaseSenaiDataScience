use db_biblioteca;

select max(ano_publicacao) from tb_livros;

select min(ano_publicacao) from tb_livros;

select count(id) from tb_livros;

select * from tb_emprestimo where data_devolucao between '2023/08/11' and '2023/09/11';

select * from tb_autores order by nome desc;

select * from tb_autores order by nome asc;