create database backEnd_Semana8;
use backEnd_Semana8;
CREATE TABLE clientes 
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(30) NOT NULL, 
    sobrenome VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    idade INT DEFAULT NULL,
    foto VARCHAR(60) 
);

CREATE TABLE produtos 
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(30) NOT NULL, 
    descricao VARCHAR(60) NOT NULL,
    preco DOUBLE DEFAULT NULL,
    data_atual datetime NOT NULL
);