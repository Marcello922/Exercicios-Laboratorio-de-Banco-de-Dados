create database LABD;

use LABD;

CREATE TABLE Peca (CodPeca varchar(2), NomePeca varchar(100), CorPeca varchar(100), PesoPeca int, CidadePeca varchar(100), PRIMARY KEY (CodPeca));

INSERT INTO peca VALUES ('P1', 'Eixo', 'Cinza', 10, 'Poa'), ('P2', 'Rolamento', 'Preto', 16, 'Rio'), ('P3', 'Mancal', 'Verde', 30, 'Sao Paulo');

CREATE TABLE Fornec (CodFornec varchar(2), NomeFornec varchar(100), StatusFornec int, CidadeFornec varchar(100), PRIMARY KEY (CodFornec));

INSERT INTO Fornec VALUES ('F1', 'Silva', 5, 'São Paulo'), ('F2', 'Souza', 10, 'Rio'), ('F3', 'Alvares', 5, 'São Paulo'), ('F4', 'Tavares', 8, 'Rio');

CREATE TABLE Embarq (CodPeca varchar(2), CodFornec varchar(2), QTDEmbarq int, FOREIGN KEY (CodPeca) References Peca(CodPeca), FOREIGN KEY (CodFornec) REFERENCES Fornec(CodFornec));

INSERT INTO Embarq values ('P1', 'F1', 300), ('P1','F2',400),('P1', 'F3', 200),('P2','F1',300),('P2', 'F1',300),('P2','F4',350);

SELECT COUNT(*) FROM Fornec;

SELECT COUNT(CidadeFornec) FROM Fornec GROUP BY CidadeFornec;

SELECT COUNT(*) FROM Fornec WHERE CidadeFornec IS NOT NULL;

SELECT MAX(QtdEmbarq) FROM Embarq;

SELECT QTDEmbarq,CodFornec FROM Embarq GROUP BY CodFornec;

SELECT QTDEmbarq,CodFornec FROM Embarq GROUP BY CodFornec HAVING QTDEmbarq > 300;

SELECT QTDEmbarq FROM Embarq INNER JOIN peca ON Embarq.CodPeca = peca.CodPeca WHERE peca.CorPeca = 'Cinza' GROUP BY CodFornec;

SELECT SUM(QTDEmbarq), CodFornec FROM Embarq GROUP BY CodFornec  ORDER BY SUM(QTDEmbarq) DESC;

SELECT CodFornec, QTDEmbarq FROM Embarq INNER JOIN Peca ON peca.CodPeca = Embarq.CodPeca WHERE Peca.CorPeca = 'Cinza' AND Embarq.QTDEmbarq > 500 GROUP BY CodFornec;