--Obtenha o nome e o salário dos professores que possuem um salário entre 
--2500 e 4000 (inclusive estes valores), em ordem decrescente de salário.

select Nome_Professor, Salario from professor where Salario 
between 2500 and 4000 order by Salario desc;
