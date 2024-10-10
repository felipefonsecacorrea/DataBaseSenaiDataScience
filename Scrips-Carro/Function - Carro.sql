use bd_carro;

-- definindo delimitador 
delimiter $$

-- criando calculo de desconto 
create function calculo_desconto (valor decimal(10,2), desconto decimal (5,2))
returns decimal(10,2) -- retorno da função

reads sql data -- informa que apenas ler os dados sem fazer nenehuma alteração

begin

return valor - (valor * desconto / 100);

end $$

delimiter ;

select modelo, marca, valor, calculo_desconto(valor, 15.3) from tb_carro;


-- -----------------------------------------------------------------------------------

delimiter $$
create function total_vendas (marcaCarro varchar(50))
returns decimal(50,2)

reads sql data

begin
declare totalVendas decimal(50,2);

select sum(valor * numero_vendas) into totalVendas from tb_carro where marca = marcaCarro group by marca;

return totalVendas;

end$$

delimiter ;

select total_vendas("VW") ;

select marca, sum(valor * numero_vendas) from tb_carro group by marca;