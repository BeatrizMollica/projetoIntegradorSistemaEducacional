create database escola_cadastros;
use escola_cadastros;

/*Comandos DDL para criar as tabelas*/
CREATE TABLE pessoa_fisica ( 
	nome text NOT NULL,
	cpf CHAR(11) primary key, 
    email text NOT NULL, 
    telefone VARCHAR(11) NOT NULL);

CREATE TABLE professor ( 
	cpf CHAR(11), 
    atuacao text NOT NULL, 
    registro CHAR(8) NOT NULL,
    FOREIGN KEY (cpf) REFERENCES pessoa_fisica (cpf));
                       
CREATE TABLE estudante (
	cpf CHAR(11), 
    curso text NOT NULL, 
    matricula CHAR(8) NOT NULL,
    FOREIGN KEY (cpf) REFERENCES pessoa_fisica (cpf) );

CREATE TABLE pessoa_juridica (
	razao_social text NOT NULL, 
    cnpj CHAR(14) primary key, 
    email text NOT NULL, 
    telefone VARCHAR(11) NOT NULL);

CREATE TABLE fornecedor (
	cnpj CHAR(14), 
    categoria text NOT NULL, 
    produtos text NOT NULL,  
    FOREIGN KEY (cnpj) REFERENCES pessoa_juridica (cnpj));

/*Exemplos comandos DML usados para inserir os registros nas tabelas*/
INSERT INTO pessoa_fisica (cpf, nome, email, telefone) VALUES 
("09674172602", "Bruno Afonso Barros", "brunoab@gmail.com","34954954954"),
("61453759485", "Túlio Coelho Campos", "tccampos@gmail.com","43497854321");

INSERT INTO estudante (cpf, curso, matricula) VALUES ("09674172602", "Física", "10415471");

INSERT INTO professor (cpf, atuacao, registro) VALUES ("61453759485", "Mecânica dos fluidos", "54179083");

INSERT INTO pessoa_juridica (razao_social, cnpj, email, telefone) VALUES ("Alberto Negócios LTDA", "25088989000170", "albertonegocios@gmail.com", "1150722564");

INSERT INTO fornecedor (categoria, produtos, cnpj) VALUES ("móveis", "armários", "25088989000170");
