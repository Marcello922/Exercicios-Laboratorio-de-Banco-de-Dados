DELIMITER //
CREATE TRIGGER tr2 BEFORE INSERT ON prereq FOR EACH ROW
BEGIN
	IF NOT EXISTS(SELECT NumDisc FROM disciplina WHERE NumDisc = new.NumDisc) THEN
    SIGNAL SQLSTATE '45000';
    END IF;
END //
DELIMITER ;


insert into prereq VALUES (2,2,2,2);

insert into prereq VALUES (1,1,1,1);



