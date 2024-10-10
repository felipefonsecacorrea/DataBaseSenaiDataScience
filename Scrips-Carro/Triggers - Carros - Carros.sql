CREATE DEFINER=`root`@`localhost` TRIGGER `tb_carro_AFTER_UPDATE` AFTER UPDATE ON `tb_carro` FOR EACH ROW BEGIN
	IF NEW.valor <> OLD.valor THEN
    INSERT INTO historico_preco values (null, NOW(), OLD.valor, NEW.valor, NEW.id);
END IF;
END