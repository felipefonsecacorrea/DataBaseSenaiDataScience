use db_biblioteca;

-- Exercicio 1. Criar uma trigger que impeça a inserção de autores com menos de 18 anos.
	select * from tb_autores;
    
    insert into tb_autores value ('5','Caique malaquias', '2007-03-12');
    
    CREATE DEFINER=`root`@`localhost` TRIGGER `tb_autores_BEFORE_INSERT` BEFORE INSERT ON `tb_autores` FOR EACH ROW BEGIN
		DECLARE idade INT;
		
		set idade = TIMESTAMPDIFF(YEAR, NEW.data_nascimento, CURDATE());
		
		if idade < 18 then
		signal sqlstate '45000'
		set message_text = 'O autor não pode ser menor de idade. Insira um autor maior de idade (+18).';
		end if;
	END;

-- Exercicio 2. Criar uma trigger que atualize automaticamente a data de devolução para 15 dias após a data de empréstimo.
	select * from tb_emprestimo;
    
    insert into tb_emprestimo value ('5', '3', '2', '2024-10-01', '2024-10-07');
	 
    insert into tb_emprestimo (id, id_membros, id_livro, data_emprestimo) values ('6', '1', '2', '2024-10-07');
    
	CREATE DEFINER=`root`@`localhost` TRIGGER `tb_emprestimo_BEFORE_INSERT` 
	BEFORE INSERT ON `tb_emprestimo` FOR EACH ROW BEGIN
	SET NEW.data_devolucao = DATE_ADD(NEW.data_emprestimo, INTERVAL 15 DAY);
	END;

-- Exercicio 3. Criar uma trigger que impeça que um membro faça mais de 3 empréstimos ao mesmo tempo.
	select count(id_membros) as quantidadeEmprestimo from tb_emprestimo where data_devolucao > now();

	insert into tb_emprestimo value ('7', '3', '1', '2024-10-08', '2024-10-20');
    
    CREATE DEFINER=`root`@`localhost` TRIGGER `tb_emprestimo_BEFORE_INSERT` BEFORE INSERT ON `tb_emprestimo` FOR EACH ROW BEGIN
	declare qtd_emprestimos int;
    
	SET NEW.data_devolucao = DATE_ADD(NEW.data_emprestimo, INTERVAL 15 DAY); 
   
    select count(id_membros) into qtd_emprestimos from tb_emprestimo where data_devolucao > now();
	if qtd_emprestimo > 1 then
        signal sqlstate '45000'
        set message_text = 'Esse cliente já possui um emprestimo.';
		end if;
	END;

-- Exercicio 4. Trigger de Atualização Automática da Data de Adesão
	CREATE DEFINER=`root`@`localhost` TRIGGER `tb_membros_BEFORE_INSERT` BEFORE INSERT ON `tb_membros` FOR EACH ROW BEGIN
		set new.data_adesao = now();
	END;

-- Exercicio 5. Criar uma trigger que impeça a inserção de autores com nomes duplicados.

select * from tb_autores;

insert into tb_autores (id, nome, data_nascimento) value (5, 'Fonseca Felipe', '1996-08-25');

    if exists (select 1 from tb_autores where nome = new.nome) then
		signal sqlstate '45000'
        set message_text = 'Já existe um autor com esse nome ';
	end if;