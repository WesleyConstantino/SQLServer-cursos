--Consultas realizadas no Oracle Live SQL (https://livesql.oracle.com/) 

--Questão 1
--Obtenha o nome de cada aluno e o nome do curso a que cada um pertence.
 SELECT A.Nome_Aluno, C.Nome_Curso
 FROM Aluno A, Curso C
 WHERE(A.Cod_Curso = C.Cod_Curso);


--Questão 2
--Obtenha a maior idade, a menor idade e a idade média dos alunos do curso de 'Ciencia da Computacao'.
