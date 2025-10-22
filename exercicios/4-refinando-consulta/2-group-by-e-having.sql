-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT customers.CustomerId AS id_cliente, customers.FirstName AS nome_cliente, SUM(invoices.total) as total_gasto
FROM customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY id_cliente, nome_cliente;


-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
SELECT customers.CustomerId AS id_cliente, customers.FirstName AS nome_cliente, SUM(invoices.total) as total_gasto
FROM customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY id_cliente, nome_cliente
HAVING total_gasto > 30;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT customers.CustomerId AS id_cliente, customers.FirstName AS nome_cliente, COUNT(invoices.total) AS qtd_compras, SUM(invoices.total) as total_gasto, MAX(invoices.total) AS maior_valor_compra
FROM customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY id_cliente, nome_cliente
HAVING total_gasto > 30;

-- Outros
SELECT customers.CustomerId AS id_cliente, customers.FirstName AS nome_cliente, invoices.BillingCountry AS país_compra, COUNT(invoices.BillingCountry) AS compras
FROM customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY id_cliente, nome_cliente
ORDER BY nome_cliente;