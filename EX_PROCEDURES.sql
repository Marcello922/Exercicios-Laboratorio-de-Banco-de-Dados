delimiter $$
CREATE PROCEDURE InsereRegistro()
BEGIN
	INSERT INTO Peca(CodPeca,NomePeca,CorPeca,PesoPeca,CidadePeca) VALUES ('P4','Alternador','Cinza',50,'Rio;');
END $$
delimiter ;

CALL InsereRegistro();


DELIMITER $$

CREATE PROCEDURE CincoMil()
BEGIN 
DECLARE x int;
SET x = 5;
loop_label: LOOP
	IF x > 5005 THEN
		LEAVE loop_label;
    END IF;
	INSERT INTO Peca VALUES (CONCAT('P',x),CONCAT('Peca',x),'Cinza','30','Rio');
    SET x = x + 1;
END LOOP;
END $$

DELIMITER ;

CALL CincoMil();