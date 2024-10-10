CREATE DEFINER=`root`@`localhost` TRIGGER `tb_autores_BEFORE_INSERT` BEFORE INSERT ON `tb_autores` FOR EACH ROW BEGIN
	DECLARE idade INT;
    
	set idade = TIMESTAMPDIFF(YEAR, NEW.data_nascimento, CURDATE());
    
    if idade < 18 then
    signal sqlstate '45000'
    set message_text = 'O autor não pode ser menor de idade. Insira um autor maior de idade (+18).';
    end if;
END