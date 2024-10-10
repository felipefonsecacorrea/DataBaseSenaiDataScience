USE bd_carro;

-- INNER JOIN
-- Vai retornar somente as colunas correspondentes entre as tabelas
-- Coluna id_carro na tabela proprietario /id na tabela carro

SELECT * FROM tb_proprietario AS p
INNER JOIN tb_carro AS C
ON P.id_carro = C.id;


-- --------------------------------------------------------------------

-- RIGHT JOIN
-- Todas as colunas da minha segunda tabela sejam retornadas
-- mesmo que não exista similaridade na tabela 1

SELECT * FROM tb_proprietario AS P
RIGHT JOIN tb_carro AS C
ON P.id_carro = C.id;

-- --------------------------------------------------------------------

-- LEFT JOIN
-- Todas as colunas da minha primeira tabela sejam retornadas
-- mesmo que não exista similaridade na tabela 2

SELECT * FROM tb_carro as C
LEFT JOIN tb_proprietario AS P
ON C.id=P.id_carro;

-- --------------------------------------------------------------------


-- UNION
-- Combinação dos dois joins (right e letf)

select * from tb_proprietarios as p
left join tb_carro as c
on p.id_carro = c.id
union
select * from tb_proprietarios as p
right join tb_carro as c
on c.id = p.id_carro
where p.id_carros is null;