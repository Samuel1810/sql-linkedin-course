-- Da tabela invoice, remova o invoice cujo o InvoiceID corresponda ao valor 33
DELETE FROM invoices
WHERE InvoiceId = 33;


-- Da tabela invoice, remova todos os invoices cujo o Total seja menor do que 1 + Total maior que 16
DELETE FROM invoices
WHERE Total < 1 OR Total > 16;

DELETE FROM genres
WHERE GenreId = 3;

DELETE FROM tracks
WHERE GenreId = 3;