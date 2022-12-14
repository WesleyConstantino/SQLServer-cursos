--Consultas realizadas no Oracle Live SQL (https://livesql.oracle.com/) 

--Questão 1
--Obtenha o nome de cada aluno e o nome do curso a que cada um pertence.
 SELECT A.Nome_Aluno, C.Nome_Curso
 FROM Aluno A, Curso C
 WHERE (A.Cod_Curso = C.Cod_Curso);


--Questão 2
--Obtenha a maior idade, a menor idade e a idade média dos alunos do curso de 'Ciencia da Computacao'.
 SELECT MIN (A.idade),MAX (A.idade),AVG (A.idade)   --"MIN" pega o menor valor, "MAX" pega o maior e "AVG" a média
 FROM Aluno A, Curso C
 WHERE (C.Cod_Curso = 1001);


--Questão 3
--Obtenha o nome de cada curso (que tenha aluno) e, para cada curso, a média de idade e a quantidade de alunos.
 SELECT C.nome_curso,AVG (A.idade), COUNT (A.matricula)  --"COUNT" trás a quantidade de matículas, nesse caso
 FROM Curso C, Aluno A
 WHERE (C.cod_curso = A.cod_curso)
 GROUP BY C.nome_curso;


--Questão 4
--Obtenha o nome de cada aluno da universidade (mesmo aqueles que ainda não cursaram disciplina) e a quantidade de disciplinas que cada um já cursou.
--Retorne em ordem crescente da quantidade de disciplinas e, se houver empate na quantidade, em ordem crescente de nome do aluno.
 SELECT A.nome_aluno, COUNT (AD.matricula) AS contagem
 FROM Aluno A LEFT JOIN Aluno_Disc AD
 ON (A.matricula = AD.matricula)
 GROUP BY A.nome_aluno
 ORDER BY contagem ASC, nome_aluno ASC;

--Questão 5
--Obtenha o nome das disciplinas que a aluna 'Claudia' cursou e a nota que ela tirou em cada uma delas.
 SELECT A.nome_aluno ,D.nome_disciplina, AD.nota
 FROM Aluno A, Disciplina D, Aluno_Disc AD
 WHERE (AD.cod_disciplina = D.cod_disciplina)
 AND (A.nome_aluno = 'Claudia');


--Questão 6
--Obtenha o nome de cada disciplina e o nome do instituto a que cada uma pertence.
 SELECT D.nome_disciplina, I.nome_instituto
 FROM Disciplina D, Instituto I,Curso C
 WHERE (D.cod_curso = C.cod_curso)
 AND (C.cod_instituto = I.cod_instituto);


--Questão 7
--Obtenha o nome de todos os professores da universidade (mesmo aqueles que ainda não ministraram disciplina) e os nomes das disciplinas que eles ministram.
--Retorne em ordem crescente do nome do professor.
 SELECT P.nome_professor , D.nome_disciplina
 FROM Professor P LEFT JOIN Prof_Disc PD
 ON (P.cod_professor = PD.cod_professor)
 LEFT JOIN Disciplina D ON (PD.cod_disciplina = D.cod_disciplina)
 ORDER BY P.nome_professor;


--Questão 8
--Obtenha o nome dos alunos (de qualquer curso) que têm idade superior à média de idade dos alunos do curso de 'Administracao de Empresas'.
 SELECT A.nome_aluno
 FROM Aluno A
 WHERE A.idade > (SELECT AVG (A.idade)
 FROM Aluno A, Curso C
 WHERE (C.cod_curso = 1002 and C.cod_curso = A.cod_curso));
 
 --Questão 9
 --Obtenha o nome de cada professor (que orienta aluno) e a quantidade de alunos que cada um orienta, mas somente aqueles que orientam mais alunos que o professor ‘Joao’
 SELECT COUNT (A.cod_professor_orientador) as contagem, P.nome_professor
 FROM aluno A INNER JOIN professor P
 ON (A.cod_professor_orientador = P.cod_professor)
 GROUP BY P.nome_professor
 HAVING COUNT (A.cod_professor_orientador)
 > (SELECT COUNT (A.cod_professor_orientador)
 FROM aluno A INNER JOIN professor P
 ON (A.cod_professor_orientador = P.cod_professor)
 WHERE (P.nome_professor = 'Joao'));
