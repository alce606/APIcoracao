-- Verificar se o banco de dados j? existe e exclu?-lo
use master if exists (SELECT * FROM SYS.databases WHERE name = 'TCC')
DROP DATABASE TCC
GO
-- Cria??o do banco de dados
CREATE DATABASE TCC;
GO
-- Uso do banco de dados rec?m-criado
USE TCC;
GO
-- Cria??o da tabela Usuario
CREATE TABLE Usuario (
    Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(255) NOT NULL,
    Sexo NVARCHAR(10),
    DataNascimento DATE,
    Cpf NVARCHAR(11) NOT NULL,
    Telefone NVARCHAR(15),
    Email NVARCHAR(255) NOT NULL,
    Senha NVARCHAR(255) NOT NULL
);
GO
-- Inserir dados na tabela Cadastro
INSERT INTO Usuario (nome, sexo, dataNascimento, cpf, telefone, email, senha)
VALUES 
('Jo?o da Silva', 'M', '1990-01-01', '12345678901', '123456789', 'joao@example.com', 'senha123'),
('Maria Oliveira', 'F', '1985-05-15', '10987654321', '987654321', 'maria@example.com', 'senha456');
USE TCC
SELECT * FROM Usuario

-- Atualizar o registro na tabela Usuario
	UPDATE Usuario
SET nome = 'Isabela'
WHERE id = 1;

-- Selecionar todos os registros da tabela Usuario
SELECT * FROM Usuario

--deletar
DELETE FROM Usuario WHERE id = 1; -- Considerando que o id de Jo?o ? 1
