select @@autocommit;

set @@autocommit = OFF; -- desativar o salvar automaticamente

-- exemplo ROLLBACK simples
-- Insert

select * from tb_proprietario ;

insert into tb_proprietario 
value ('6', "aline feia", '5', '22');

rollback;

-- delete
delete from tb_proprietario where id = 5;

ROLLBACK;

SELECT * FROM tb_proprietario;