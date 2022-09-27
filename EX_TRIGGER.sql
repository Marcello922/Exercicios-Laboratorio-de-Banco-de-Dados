CREATE TABLE Cod_prof(pk int, op varchar(10), data datetime,id varchar(30));

delimiter //
CREATE TRIGGER tr1 AFTER INSERT ON professor
FOR EACH ROW
BEGIN
	INSERT INTO prof_log(id,pk,op,data) VALUES((SELECT CURRENT_USER()),(SELECT CodProf FROM Professor ORDER BY CodProf DESC LIMIT 1),'INSERT',NOW());
END //
delimiter ;