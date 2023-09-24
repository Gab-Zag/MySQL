DROP DATABASE IF EXISTS aula3;
CREATE DATABASE aula3;
USE aula3;

#COMANDO PARA DESATIVAR O SAFE MODE
SET SQL_SAFE_UPDATES = 0;

#QUESTAO 1
#indentificação unica, indexação, integridade referencial, ordenação implicita
#restrição de dados, otimização de consulta, garantia de unicidade


#QUESTAO 2
CREATE TABLE IF NOT EXISTS pessoa(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    cargo VARCHAR(45)
);

#RESPONDA A QUESTÂO 2 AQUI
-- Criar a tabela
CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(200),
    Cargo VARCHAR(50)
);

-- Inserir registros
INSERT INTO Funcionarios (ID, Nome, Endereco, Cargo)
VALUES (1, 'João Silva', 'Rua A, 123', 'Gerente');

INSERT INTO Funcionarios (ID, Nome, Endereco, Cargo)
VALUES (2, 'Maria Santos', 'Avenida B, 456', 'Analista');

INSERT INTO Funcionarios (ID, Nome, Endereco, Cargo)
VALUES (3, 'Pedro Almeida', 'Rua C, 789', 'Assistente');

-- Consulta de Nome e Endereço
SELECT Nome, Endereco
FROM Funcionarios;

-- Atualizar o nome do primeiro registro
UPDATE Funcionarios
SET Nome = 'Novo Nome'
WHERE ID = 1;

-- Excluir o último registro
DELETE FROM Funcionarios
WHERE ID = (SELECT MAX(ID) FROM Funcionarios);



#QUESTAO 3
CREATE TABLE IF NOT EXISTS empresa(
	matricula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    cpf VARCHAR(45),
    cargo VARCHAR(45),
    nProjetos INT
);

#RESPONDA A QUESTÂO 3 AQUI
CREATE TABLE Funcionarios (
    matricula INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    cargo VARCHAR(50),
    nroprojetos INT
);

INSERT INTO Funcionarios (matricula, nome, cpf, cargo, nroprojetos)
VALUES
    (1, 'João Silva', '123.456.789-01', 'Desenvolvedor', 5),
    (2, 'Maria Santos', '987.654.321-09', 'Gerente de Projetos', 3),
    (3, 'Pedro Oliveira', '456.789.123-45', 'Analista de QA', 2),
    (4, 'Ana Costa', '789.123.456-78', 'Desenvolvedor', 6),
    (5, 'Carlos Pereira', '654.321.987-32', 'Desenvolvedor', 4);

SELECT * 
FROM Funcionarios 
WHERE nroprojetos >= 4;

SELECT AVG(nroprojetos) 
FROM Funcionarios 
WHERE cargo <> 'Gerente de Projetos';

SELECT DISTINCT cargo 
FROM Funcionarios;

SELECT nome, cpf, nroprojetos 
FROM Funcionarios 
WHERE cargo = 'Desenvolvedor';


#QUESTAO 4
CREATE TABLE IF NOT EXISTS aluno(
	matricula INT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    ano_nasc INT,
    curso VARCHAR(45)
);

#RESPONDA AS QUESTOES 4 E 5 AQUI

INSERT INTO Aluno (nome, matricula, endereco, ano_nasc, curso) VALUES ('Janaina', 123, 'Rua 1', 1998, 'GEB');
INSERT INTO Aluno (nome, endereco, ano_nasc, curso) VALUES ('Pedro', 'Rua 2', 2000, 'GES');
INSERT INTO Aluno (nome, endereco, ano_nasc, curso) VALUES ('Jander', 'Rua 3', 1999, 'GEC');
INSERT INTO Aluno (nome, matricula, endereco, ano_nasc, curso) VALUES ('Lucca', 123, 'Rua 4', 1998, 'GEB');
Insert into aluno(nome, matricula, endereco, ano_nasc) values(‘Laura’, '456', 'Rua 5', '1998');
#5
#a
SELECT nome, matricula, curso
FROM Aluno
WHERE nome LIKE 'Jan%' AND LENGTH(nome) >= 7;
#b
SELECT nome, curso
FROM Aluno
WHERE nome LIKE 'L%A';
#c
SELECT DISTINCT ano_nasc, curso
FROM Aluno;
#d
SELECT nome, ano_nasc, curso
FROM Aluno
WHERE ano_nasc <= 1998;
#e
SELECT *
FROM Aluno
LIMIT 3;
#f
UPDATE Aluno
SET endereco = 'Nova República'
WHERE curso = 'GEB';
#g
DELETE FROM Aluno
WHERE curso = 'GEB';
