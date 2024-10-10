insert into tb_autores values
('1', 'Fonseca Felipe', '1996/08/25'),
('2', 'Fernandes Aline', '2000/05/12'),
('3', 'Belizario Ana Paula', '1998/07/05');

select * from tb_autores;

insert into tb_livros values
('1', 'Os truques do power bi', '2023/02/01', '1'),
('2', 'Python para ciencia de dados', '2021/03/07', '2'),
('3', 'Engenharia de dados', '2020/09/20', '3');

select * from tb_livros;

insert into tb_membros values
('1', 'Victor', '2022/10/12'),
('2', 'Roginie', '2021/12/10'),
('3', 'Renata', '2022/07/22');

select * from tb_membros;

insert into tb_emprestimo values 
('1', '1', '1', '2023/08/11', '2023/09/11'),
('2', '2', '2', '2023/05/20', '2023/06/20'),
('3', '3', '3', '2023/11/28', '2023/11/28');

select * from tb_emprestimo;
