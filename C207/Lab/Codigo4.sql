DROP DATABASE IF EXISTS AV1;
CREATE DATABASE AV1;
USE AV1;

#COMANDO PARA DESATIVAR O SAFE MODE
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE IF NOT EXISTS Jogador(
	ID INT PRIMARY KEY NOT NULL auto_increment,
    nome VARCHAR(45),
    idade INT,
    nacionalidade VARCHAR(45),
    posicao VARCHAR(45),
    time VARCHAR(45)
);

#A
#INSERT
INSERT INTO Jogador (nome, idade, nacionalidade, posicao, time) VALUES ('Cristiano Ronaldo', '38', 'Portugal', 'Atacante', 'Al-Nassr');
INSERT INTO Jogador (nome, idade, nacionalidade, posicao, time) VALUES ('Lionel Messi', '36', 'Argentina', 'Meio-Campista', 'Inter Miami');
INSERT INTO Jogador (nome, idade, nacionalidade, posicao, time) VALUES ('Neymar', '31', 'Brasil', 'Atacante', 'Al-Hilal');
INSERT INTO Jogador (nome, idade, nacionalidade, posicao, time) VALUES ('Van Dijk', '32', 'Holanda', 'Defensor', 'Liverpool');
INSERT INTO Jogador (nome, idade, nacionalidade, posicao, time) VALUES ('Ederson', '30', 'Brasil', 'Goleiro', 'Manchester City');

Select * from Jogador;

#B
#UPDATE
UPDATE Jogador set idade = 32 WHERE id = '3';

#C
#insert
INSERT INTO Jogador (nome, idade, nacionalidade, posicao, time) VALUES ('Gabriel', '21', 'Brasil', 'Atacante', 'Flamengo');

#D
#SELECT DO BRASIL
Select nome, idade, nacionalidade, posicao from Jogador WHERE nacionalidade = 'Brasil';

#F
#Media de idade
SELECT AVG(idade) AS media_idade FROM Jogador;

#G
#ATACANTES
SELECT nome,idade,nacionalidade, posicao from Jogador Where posicao = 'Atacante';

#H
#REMOVER
DELETE FROM Jogador WHERE id = '1';

#I
#IDADE
SELECT nome, idade, nacionalidade, posicao from Jogador where idade >= 32;

#J
#Jogador com a idade mais velha
SELECT MAX(idade) AS maior_idade FROM Jogador;




