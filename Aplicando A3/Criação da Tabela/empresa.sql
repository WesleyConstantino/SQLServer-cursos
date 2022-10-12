CREATE TABLE funcionario( 

    numat BIGINT NOT NULL, 

    nome VARCHAR(50) NOT NULL, 

    salario DECIMAL(5,1) NOT NULL, 
  
    sexo CHAR"(1)" NOT NULL,

    ndepto INTEGER(1) NOT NULL,

    nsuper BIGINT(4),

    PRIMARY KEY (numat) 

); 
