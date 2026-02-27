-- =============================================
-- Projeto: Controle de Vendas
-- Autor: Aline Vilela
-- Descrição: Criação do banco de dados e tabelas
-- =============================================

-- Criação do banco de dados
CREATE DATABASE ControleVendas;
GO

-- Seleciona o banco criado
USE ControleVendas;
GO

-- =============================================
-- Tabela: Clientes
-- Armazena informações dos clientes cadastrados
-- =============================================
CREATE TABLE Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY, -- Identificador único do cliente
    Nome NVARCHAR(100),                      -- Nome do cliente
    Email NVARCHAR(100)                      -- Email do cliente
);
GO

-- =============================================
-- Tabela: Produtos
-- Armazena os produtos disponíveis para venda
-- =============================================
CREATE TABLE Produtos (
    ProdutoID INT IDENTITY(1,1) PRIMARY KEY, -- Identificador único do produto
    Nome NVARCHAR(100),                      -- Nome do produto
    Preço DECIMAL(10,2)                      -- Preço do produto (2 casas decimais)
);
GO

-- =============================================
-- Tabela: Vendas
-- Registra as vendas realizadas
-- Relaciona clientes e produtos
-- =============================================
CREATE TABLE Vendas (
    VendaID INT IDENTITY(1,1) PRIMARY KEY,   -- Identificador único da venda
    DataVenda DATE,                          -- Data em que a venda foi realizada
    ClienteID INT,                           -- Cliente que realizou a compra
    ProdutoID INT,                           -- Produto vendido
    Quantidade INT,                          -- Quantidade comprada
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

GO
