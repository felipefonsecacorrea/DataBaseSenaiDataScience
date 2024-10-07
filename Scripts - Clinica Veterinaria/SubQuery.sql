use bd_carro;

select avg(valor) from tb_carro;

select * from tb_carro where valor > 150000;

select * from tb_carro 
where valor > (select avg(valor) from tb_carro);

-- ----------------------------------------------------------

select * from tb_carro;

select * from tb_proprietario where id_carro = 8;

select * from tb_carro where marca = "VW";

select * from tb_proprietario 
where id_carro in (select id from tb_carro where marca = "VW");

