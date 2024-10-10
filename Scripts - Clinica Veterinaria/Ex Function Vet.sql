use bd_clinica;

-- CLINICA VETERINÁRIA

--  Exercicio 1. Crie uma função que receba o id_cliente e retorne a quantidade de pets que esse cliente possui.
	delimiter $$
	create function qtd_pets_cliente (nome_cliente varchar(100))
	returns int(10)
	reads sql data
	begin
	declare qtd_pets int(10);
	select count(pets.id) into qtd_pets from pets 
	inner join tb_cliente on pets.id_cliente = tb_cliente.id
	where tb_cliente.nome like nome_cliente;
	return qtd_pets;
	end$$
	delimiter ;

	select * from tb_cliente;

	select qtd_pets_cliente("gabriel victor");

-- Exercicio 2. Crie uma função que recebe o id_pet e retorna a data da última consulta do pet.
	delimiter $$

	create function ultima_consulta_pets (idPets int(10))
	returns date
	reads sql data
	begin
    
    declare ultima_consulta date;
    
    select max(data_atendimento) into ultima_consulta from tb_atendimento
    where id_pet = idPets;
	
    return ultima_consulta;
	end$$
    delimiter ;
    
    select * from tb_atendimento;
    select * from pets;
    
    select ultima_consulta_pets(1);

--  Exercicio 3. Crie uma função que receba o id_veterinario e retorne o número total de atendimentos feitos por ele.
	delimiter $$
    create function total_atendimento_vet (nome_vet varchar(100))
    returns int(10)
    reads sql data 
    begin
    declare qtd_atendimento int(10);
    select count(tb_atendimento.id) into qtd_atendimento from tb_atendimento 
    inner join tb_veterinario on tb_atendimento.id_veterinario = tb_veterinario.id
    where tb_veterinario.nome = nome_vet;
    return qtd_atendimento;
	end$$
    Delimiter ;
	select * from tb_veterinario;
    select total_atendimento_vet("felipe fonseca");
    
-- Exercicio 4. Crie uma função que receba o id_pet e retorne o nome do dono (cliente) desse pet.
	
    delimiter $$
    create function pet_dono (nome_pet varchar(100))
    returns varchar(100)
    reads sql data
    begin
    declare nome_dono varchar(100);
    select tb_cliente.nome into nome_dono from tb_cliente
    where tb_cliente.id = (select id_cliente from pets where pets.nome = nome_pet);
    return nome_dono;
    end $$
	delimiter ;
    select * from pets;
    select pet_dono("kaik");