-- Verificar se o banco de dados já existe e excluí-lo
IF EXISTS (SELECT * FROM SYS.databases WHERE name = 'TCC')
DROP DATABASE TCC
GO
-- Criar o banco de dados TCC
CREATE DATABASE TCC
GO

USE TCC
-- Criar a tabela Cadastro
CREATE TABLE Usuario (
    id BIGINT NOT NULL IDENTITY (1,1) PRIMARY KEY,
    nome VARCHAR(45) NULL,
    sexo CHAR(45) NULL, -- 'M' ou 'F'
    dataNascimento DATE NULL, 
    cpf VARCHAR(45) NULL,  -- 11 dígitos para o CPF
    telefone VARCHAR(45) NULL,
    email VARCHAR(45) NULL,
    senha VARCHAR(45) NULL,
)
-- Inserir dados na tabela Cadastro
INSERT INTO Usuario (nome, sexo, dataNascimento, cpf, telefone, email, senha)
VALUES 
('João da Silva', 'M', '1990-01-01', '12345678901', '123456789', 'joao@example.com', 'senha123'),
('Maria Oliveira', 'F', '1985-05-15', '10987654321', '987654321', 'maria@example.com', 'senha456');
USE TCC
SELECT * FROM Usuario

