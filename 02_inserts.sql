-- =============================================
-- Projeto: Controle de Vendas
-- Inserção de dados simulados
-- =============================================

-- =============================================
-- Inserção de Clientes
-- =============================================
INSERT INTO Clientes (Nome, Email) VALUES
('João Silva', 'joao@email.com'),
('Aline Vilela', 'aline.vilela@email.com'),
('Melissa Cardoso', 'mel.cardoso@email.com'),
('Luiz Antonio', 'luiz@email.com'),
('Maria Souza', 'maria.s@email.com'),
('Carlos Pereira', 'carlos.pereira@email.com');

-- =============================================
-- Inserção de Produtos
-- =============================================
INSERT INTO Produtos (Nome, Preço) VALUES
('Camiseta', 49.90),
('Notebook', 2599.99),
('Tênis', 199.90),
('Relógio', 299.90),
('Mochila', 129.90),
('Fone de Ouvido', 89.90),
('Smartphone', 1899.99),
('Geladeira', 1599.00),
('Cadeira', 349.90),
('Livro', 59.90);

-- =============================================
-- Inserção de Vendas
-- =============================================
INSERT INTO Vendas (DataVenda, ClienteID, ProdutoID, Quantidade) VALUES
('2025-08-27', 1, 2, 1),
('2025-08-27', 2, 5, 2),
('2025-08-28', 3, 1, 1),
('2025-08-28', 1, 3, 1),
('2025-08-30', 2, 7, 1),
('2025-08-30', 3, 4, 3),
('2025-09-01', 1, 6, 1),
('2025-09-01', 2, 8, 2),
('2025-09-01', 3, 9, 1);
