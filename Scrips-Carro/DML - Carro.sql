use bd_carro;

select * from tb_carro;

insert into tb_carro value(
	"1",
    "Fusca",
    "VW",
    "10000.00",
    "Verde",
    "1500000",
    "1986"
);

insert into 
	tb_carro 
values
	("2", "Novo Fusca ", "VW", "200000.00", "Branco", "300000", "2016"),
	("3", "Nivus", "VW", "120000.00", "Nardo Grey", "500000", "2021"),
	("4", "Jetta", "VW", "150000.00", "Preto", "200000", "2023"),
	("5", "Gol", "VW", "35000.00", "Vermelho", "40000", "2013"),
	("6", "Polo", "VW", "80000.00", "Prata","830000", "2022"),
	("7", "Passat", "VW", "100000.00", "Preto", "60000", "2015"),
	("8", "Golf", "VW", "135000.00", "Vermelho", "450000", "2014"),
	("9", "Id Buz", "VW", "210000.00", "Amarelo", "15000", "2024"),
	("10", "Parati", "VW", "25000.00", "Verde", "280000", "20000");
    
select* from tb_proprietario;    
    
insert into tb_proprietario values
	("1", "Felipe Fonseca", "9", "28"),
	("2", "Denis Santana", "8", "29"),
	("3", "Arthut França", "4", "23"),
	("4", "Keven Ike", "7", "22"),
	("5", "Roberto Correa", "1", "51");
    
select pr.nome as Nome, ca.modelo as Carro from tb_proprietario as pr
inner join tb_carro as ca on pr.id_carro = ca.id