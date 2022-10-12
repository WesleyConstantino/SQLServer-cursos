--Consultas realizadas no Oracle Live SQL (https://livesql.oracle.com/) 

--Questão 1
 SELECT A.Nome_Aluno, C.Nome_Curso
 FROM Aluno A, Curso C
 WHERE(A.Cod_Curso = C.Cod_Curso);
