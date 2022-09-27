CREATE DATABASE dbaula;

use dbaula;

CREATE table PRODUTO(idprod int PRIMARY KEY, nomeprod varchar(40));
INSERT INTO PRODUTO VALUES(0,'pipoca'),(1,'arroz');


START TRANSACTION;
	UPDATE PRODUTO SET nomeprod = 'arroz' WHERE idprod = 0;
    UPDATE PRODUTO SET nomeprod = 'pipoca' WHERE idprod = 1;
COMMIT;

START TRANSACTION;
	UPDATE PRODUTO SET nomeprod = 'arroz' WHERE idprod = 1;
    UPDATE PRODUTO SET nomeprod = 'pipoca' WHERE idprod = 0;
COMMIT;