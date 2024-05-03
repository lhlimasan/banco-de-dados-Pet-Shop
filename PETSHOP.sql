CREATE DATABASE PETSHOP;

USE PETSHOP;

CREATE TABLE CLIENTE (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

CREATE TABLE ANIMAL (
    AnimalID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Especie VARCHAR(50),
    Idade INT,
    DonoID INT, -- Chave estrangeira para a tabela CLIENTE
    FOREIGN KEY (DonoID) REFERENCES CLIENTE(ClienteID)
);

INSERT INTO CLIENTE (ClienteID, Nome, Email, Telefone)
VALUES (1, 'Maria Silva', 'maria@example.com', '123456789'),
       (2, 'João Oliveira', 'joao@example.com', '987654321');

INSERT INTO ANIMAL (AnimalID, Nome, Especie, Idade, DonoID)
VALUES (1, 'Rex', 'Cachorro', 5, 1),
       (2, 'Mia', 'Gato', 3, 2);

-- Consulta utilizando JOIN
SELECT c.Nome AS NomeCliente, a.Nome AS NomeAnimal
FROM CLIENTE c
JOIN ANIMAL a ON c.ClienteID = a.DonoID;
