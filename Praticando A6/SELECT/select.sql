--Consultas realizadas no Oracle Live SQL (https://livesql.oracle.com/) 

--Questão 1
--Obtenha o nome de cada aluno e o nome do curso a que cada um pertence.
 SELECT A.Nome_Aluno, C.Nome_Curso
 FROM Aluno A, Curso C
 WHERE(A.Cod_Curso = C.Cod_Curso);


--Questão 2
--Obtenha a maior idade, a menor idade e a idade média dos alunos do curso de 'Ciencia da Computacao'.
 SELECT MIN(A.idade),MAX(A.idade),AVG(A.idade)   --"MIN" pega o menor valor, "MAX" pega o maior e "AVG" a média
 FROM Aluno A, Curso C
 WHERE(C.Cod_Curso = 1001);


--Questão 3
--Obtenha o nome de cada curso (que tenha aluno) e, para cada curso, a média de idade e a quantidade de alunos.
 SELECT C.nome_curso,AVG(A.idade),COUNT(A.matricula)  --"COUNT" trás a quantidade de matículas, nesse caso
 FROM Curso C, Aluno A
 WHERE(C.cod_curso = A.cod_curso)
 GROUP BY C.nome_curso;


--Questão 4
--Obtenha o nome de cada aluno da universidade (mesmo aqueles que ainda não cursaram disciplina) e a quantidade de disciplinas que cada um já cursou.
--Retorne em ordem crescente da quantidade de disciplinas e, se houver empate na quantidade, em ordem crescente de nome do aluno.
