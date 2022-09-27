SELECT CodDepto FROM Turma WHERE AnoSem = 20021;

SELECT CodProf FROM Professor WHERE CodDepto  = 'INF01' AND (SELECT COUNT(CodProf) FROM ProfTurma WHERE AnoSem = 20021) > 0;

SELECT DiaSem,HoraInicio,NumHoras FROM Horario WHERE SiglaTur = (SELECT SiglaTur FROM ProfTurma WHERE CodProf = (SELECT CodProf FROM Professor WHERE NomeProf = 'Antunes'));

SELECT NomeDepto FROM depto INNER JOIN turma ON depto.CodDepto = turma.CodDepto
INNER JOIN horario ON horario.CodDepto = turma.CodDepto
INNER JOIN sala ON horario.CodPred = Sala.CodPred 
INNER JOIN predio on Predio.CodPred = Sala.CodPred WHERE predio.NomePred = 'Informática - aulas' AND turma.AnoSem = 20021;

SELECT CodProf from professor WHERE CodTit = (SELECT CodTit from titulacao WHERE NomeTir = 'Doutor') AND (SELECT COUNT(*) FROM profturma WHERE AnoSem = 20021) = 0;

