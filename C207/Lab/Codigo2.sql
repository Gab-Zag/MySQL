drop database if EXISTs testesql;
Create	database testesql;
use testesql;

#COMANDO PARA DESATIVAR O SAFE MODE
set sql_safe_updates = 0;

CREATE TABLE usuario(
ID INT PRIMARY KEY NOT NULL auto_increment,
nome varchar(45),
ano_nasc DATE,
sexo CHAR,
pais varchar(45)
);

#INSERT
INSERT INTO usuario (nome, ano_nasc, sexo, pais) VALUES ('Fulano', '1990-12-27', 'M', 'Brasil');
INSERT INTO usuario (nome, ano_nasc, sexo, pais) VALUES ('Fulano', '1990-12-27', 'M', 'Brasil');
INSERT INTO usuario () VALUES(default, 'Rafael', '998-06-30', 'M', 'Brasil');
INSERT INTO usuario(nome, sexo, pais) VALUES('Leticia', 'F', 'Italia');

#UPDATE
UPDATE usuario SET nome = 'Jimi' WHERE id = '2';
UPDATE usuario SET ano_nasc = '1942-11-27', pais = 'EUA' WHERE id = '2';

#Delete
DELETE FROM usuario WHERE id = '3';

#Busca
Select * from usuario;
SELECT sexo from usuario;
