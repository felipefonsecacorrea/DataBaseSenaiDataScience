use db_biblioteca;

-- Exercicio 1. Crie uma função que recebe o id_autor e retorna a idade do autor com base na data de nascimento.
	delimiter $$
    create function idade_autor (id_autor int(3))
    returns int(3)
    reads sql data
    begin
    
    declare idadeA int(3);
    declare dataNascA date;
    
    select data_nascimento into dataNascA from tb_autores
    where id = id_autor;
    
    set idadeA = TIMESTAMPDIFF(YEAR, dataNascA, CURDATE());
    
    return idadeA;
	end$$
    delimiter ;
        
	select * from tb_autores;
    
    select idade_autor(1);
-- Exercicio 2. Crie uma função que recebe o id_autor e retorna a quantidade de livros escritos por esse autor.
	delimiter $$
    create function livros_por_autor (autorId int(3))
    returns int(3)
    reads sql data
    begin
    
    declare qtd_livro int(5);
    
    select count(id_autor) into qtd_livro from tb_livros
    where id_autor = autorId;
    
    return qtd_livro;
    end$$
	delimiter ;
    
    select * from tb_livros;
    
    select livros_por_autor(1);
-- Exercicio 3. Crie uma função que recebe duas datas e retorna o total de empréstimos realizados nesse período.
	delimiter $$
    create function livros_por_autor (autorId int(3))
    returns int(3)
    reads sql data
    begin
    
    declare data1 date;
    declare data2 date;
    
    
    
	end$$
    delimiter ;
    


-- Exercicio 4. Crie uma função que retorna a média de dias em que os livros foram emprestados.