-- =============================================
-- Projeto: Controle de Vendas
-- Descrição: Consultas e análises de dados
-- =============================================

-- =============================================
-- Listar todas as vendas com detalhes
-- =============================================
SELECT 
    v.VendaID,
    v.DataVenda,
    c.Nome AS Cliente,
    p.Nome AS Produto,
    v.Quantidade,
    (v.Quantidade * p.Preço) AS TotalVenda
FROM Vendas v
JOIN Clientes c ON v.ClienteID = c.ClienteID
JOIN Produtos p ON v.ProdutoID = p.ProdutoID
ORDER BY v.DataVenda;

-- =============================================
-- Total de vendas por cliente
-- =============================================
SELECT 
    c.Nome AS Cliente,
    COUNT(v.VendaID) AS TotalVendas
FROM Vendas v
JOIN Clientes c ON v.ClienteID = c.ClienteID
GROUP BY c.Nome
ORDER BY TotalVendas DESC;

-- =============================================
-- Faturamento total por produto
-- =============================================
SELECT 
    p.Nome AS Produto,
    SUM(v.Quantidade * p.Preço) AS FaturamentoTotal
FROM Vendas v
JOIN Produtos p ON v.ProdutoID = p.ProdutoID
GROUP BY p.Nome
ORDER BY FaturamentoTotal DESC;

-- =============================================
-- Total de vendas por dia
-- =============================================
SELECT 
    v.DataVenda,
    SUM(v.Quantidade * p.Preço) AS TotalVendasPorDia
FROM Vendas v
JOIN Produtos p ON v.ProdutoID = p.ProdutoID
GROUP BY v.DataVenda
ORDER BY v.DataVenda;

-- =============================================
-- Ticket médio por cliente
-- =============================================
SELECT 
    c.Nome AS Cliente,
    AVG(v.Quantidade * p.Preço) AS TicketMedio
FROM Vendas v
JOIN Clientes c ON v.ClienteID = c.ClienteID
JOIN Produtos p ON v.ProdutoID = p.ProdutoID
GROUP BY c.Nome
ORDER BY TicketMedio DESC;
