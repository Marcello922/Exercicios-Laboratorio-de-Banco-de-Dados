DELIMITER //
CREATE TRIGGER tr1 BEFORE INSERT ON professor
FOR EACH ROW 
BEGIN
IF(NEW.codtit != (SELECT Codtit from titulacao WHERE nometit = 'Doutor')) THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'professor não possui doutorado';
END IF;
END //

DELIMITER ;