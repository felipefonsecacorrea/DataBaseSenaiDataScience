CREATE DEFINER=`root`@`localhost` TRIGGER `tb_proprietario_BEFORE_INSERT_1` BEFORE INSERT ON `tb_proprietario` FOR EACH ROW BEGIN
	SET NEW.idade = TIMESTAMPDIFF(YEAR, NEW.data_nascimento, CURDATE());
    
    if new.idade < 18 then
    signal sqlstate '45000'
    set message_text = 'O proprietario não pode ser menor de idade. Insira um proprietario maior de idade (+18)';
    end if;
END