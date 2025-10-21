-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT BillingCountry AS 'País', SUM(Total) AS 'Valor_total_vendido', MIN(Total) AS 'Valor mínimo', MAX(Total) AS 'Valor máxima', COUNT(Total) AS 'Quantidade_compras', ROUND(AVG(Total), 2) AS 'Ticket Médio'
FROM invoices
WHERE BillingCountry = 'Austria';
