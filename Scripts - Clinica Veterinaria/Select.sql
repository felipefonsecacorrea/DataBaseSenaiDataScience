use bd_clinica;

select * from pets;

select min(data_nascimento) from pets;

select max(data_nascimento) from pets;

select count(id) from pets;

select * from pets order by nome desc;

select * from pets order by nome asc;

select * from tb_veterinario order by nome desc;

select * from tb_veterinario order by nome asc;

select min(data_atendimento) from tb_atendimento;

select max(data_atendimento) from tb_atendimento;
