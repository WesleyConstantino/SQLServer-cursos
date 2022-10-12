create table Instituto (

Cod_instituto integer,

Nome_Instituto varchar(30),

Primary key(Cod_instituto));

 

create table Curso (

Cod_curso integer,

Nome_Curso varchar(30),

Cod_Instituto integer,

Primary key(Cod_curso),

Foreign key (Cod_instituto) References Instituto (Cod_instituto));

 

create table Disciplina (

Cod_Disciplina integer,

Nome_Disciplina varchar(30),

Cod_Curso integer,

Primary key(Cod_Disciplina),

Foreign key (Cod_curso) References Curso (Cod_curso));

 

create table Professor (

Cod_Professor integer,

Nome_Professor varchar(30),

Salario integer,

Primary key(Cod_Professor));

 

create table Aluno (

Matricula integer,

Nome_Aluno varchar(30),

Bairro varchar(30),

Idade integer,

Cod_curso integer,

Cod_Professor_Orientador integer,

Primary key(Matricula),

Foreign key (Cod_curso) References Curso (Cod_curso),

Foreign key (Cod_Professor_Orientador) References Professor(Cod_Professor));

 

create table Aluno_Disc (

Matricula integer,

Cod_Disciplina integer,

Nota integer,

Primary key(Matricula,Cod_Disciplina),

Foreign key (Matricula) References Aluno (Matricula),

Foreign key (Cod_Disciplina) References Disciplina (Cod_Disciplina));

 

create table Prof_Disc (

Cod_Professor integer,

Cod_Disciplina integer,

Dia_Semana varchar(10),

Sala integer,

Primary key(Cod_Professor,Cod_Disciplina),

Foreign key (Cod_Professor) References Professor(Cod_Professor),

Foreign key (Cod_Disciplina) References Disciplina (Cod_Disciplina));
