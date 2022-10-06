--QUESTÃO 1
--Obtenha o nome e o salário dos professores que possuem um salário entre 2500 e 4000 (inclusive estes valores), em ordem decrescente de salário.
select Nome_Professor, Salario from professor where Salario 
between 2500 and 4000 order by Salario desc; --"desc" determina ordem decrescente


--QUESTÃO 2
--Obtenha o nome e a idade dos alunos cujo nome contenha a letra “i” e que tenha mais de 19 anos, em ordem crescente do nome do aluno.
select Nome_Aluno, Idade 
from Aluno
where ((Nome_Aluno like 'I%') and (Idade > 19)) -- "<Campo> like '<Caractere>%'" seleciona nomes de um campo que comecem com um determinado caractere
order by  Nome_Aluno asc; --"order by <Campo> asc" determina ordem crescente


--QUESTÃO 3
-- Obtenha a média de idade e a quantidade de alunos do curso de código igual a 1001.
select avg(Idade) as Média_Idade, count(Matricula) as Qtde_Alunos --"avg(Campo)" obtém o valor médio de um atributo. "as" <Nome_Qualquer> determina nome da tabela de exibição resultante
from Aluno                      --"COUNT" obtém o número de linhas analisadas
where (Cod_curso = 1001);


--QUESTÃO 4
--Obtenha a nota média que o aluno de matrícula igual a 1 teve nas disciplinas que ele já cursou.
select avg(Nota) from aluno_disc where Matricula = 1;


--QUESTÃO 5
-- Obtenha, para cada matrícula de aluno, a nota média e a quantidade de disciplinas que cada um já cursou (considere somente os alunos que já cursaram alguma disciplina).
select Matricula, avg(Nota) as Media, 
count(Cod_Disciplina) as Qtde_Disciplinas 
from aluno_disc 
group by Matricula;

