use bd_carro;

select * from tb_proprietario;
select * from  tb_carro;

select marca, modelo, ano, valor from tb_carro where  valor = (select min(valor) from tb_carro);

select marca, modelo, ano, valor from tb_carro where  valor = (select max(valor) from tb_carro);

select * from tb_carro where modelo like '%Fusca%';

select count(id) from tb_carro where cor like "%Pr%";

select sum(valor) from tb_carro 
where marca = "VW"
and ano between 2000 and 2015;

select * from tb_carro order by modelo desc;
select * from tb_carro order by modelo asc;

