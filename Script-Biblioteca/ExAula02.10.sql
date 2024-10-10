use db_biblioteca;

-- INNER JOIN

-- Exercício 1: Liste os nomes dos membros que pegaram livros emprestados e o título dos livros que eles emprestaram.
select m.nome as Cliente, l.titulo as Livro from tb_emprestimo as e
inner join tb_membros as m on e.id_membros = m.id
inner join tb_livros as l on e.id_livro = l.id;


-- Exercício 2: Liste os autores e os livros que foram emprestados.
select a.nome as Autor, l.titulo as Livro from tb_emprestimo as e
inner join tb_livros as l on e.id_livro = l.id
inner join tb_autores as a on l.id_autor = a.id
;

-- --------------------------------------------------------------------------------------

-- RIGHT JOIN

-- Exercício 1: Liste todos os membros, incluindo aqueles que não realizaram nenhum empréstimo.

select  m.nome as Cliente ,l.titulo as "Livro Emprestado" from tb_emprestimo as e
inner join tb_livros as l on e.id_livro = l.id
right join tb_membros as m on e.id_membros = m.id;


-- Exercício 2: Liste todos os autores e seus livros, incluindo livros que não foram emprestados.
select a.nome as Autor, l.titulo as Livro, data_emprestimo from tb_emprestimo as e
right join tb_livros as l on e.id_livro = l.id
inner join tb_autores as a on l.id_autor = a.id;

-- Exercício 3: Liste todos os autores e seus livros que não foram emprestados.
SELECT  l.titulo as "Livro sem Emprestimo", a.nome as Autor
FROM tb_livros as l
right join tb_autores as a on l.id_autor = a.id
WHERE l.id NOT IN (SELECT id_livro FROM tb_emprestimo);
