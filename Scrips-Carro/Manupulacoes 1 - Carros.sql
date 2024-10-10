use bd_carro;

select * from tb_carro;

update tb_carro set valor = 2500000 where id = 4;

select * from historico_preco;

insert into tb_carro value("11", "Celta", "GM", "35990" , "Prata", "15000", "2012");

select*from tb_proprietario;

insert into tb_proprietario value ("6", "Ellen reis", "11", "18");

insert into tb_proprietario value ("7", "Josue Nunes", "10", "47");

insert into tb_proprietario value ("8", "Eduardo Aguiar", "6", "0", "1996-03-21");

alter table tb_proprietario add data_nascimento date;

