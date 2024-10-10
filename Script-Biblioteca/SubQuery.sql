use db_biblioteca;

select @@autocommit;

-- ----------------------------------------------------------------------------

select nome from tb_membros;

select id_membros from tb_emprestimo;

select nome from tb_membros where id in (select id_membros from tb_emprestimo 
										group by id_membros having count(id_membros) > 1) ;

-- -----------------------------------------------------------------------------

select titulo from tb_livros
where id in (select id_livro from tb_emprestimo);

-- -----------------------------------------------------------------------------

select titulo from tb_livros
where id not in (select id_livro from tb_emprestimo);
