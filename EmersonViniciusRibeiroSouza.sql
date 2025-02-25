CREATE DATABASE eventosdb;

USE eventosdb;

CREATE TABLE palestrantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    expertise VARCHAR(255) NOT NULL
);

CREATE TABLE participantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    palestrante_id INT,
    FOREIGN KEY (palestrante_id) REFERENCES palestrantes(id)
);
