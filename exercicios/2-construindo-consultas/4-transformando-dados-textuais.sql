-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT CustomerId, FirstName AS 'Nome', LastName AS 'Sobrenome', Address AS 'Endereço'
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT CustomerId, FirstName AS 'Nome', UPPER(LastName) AS 'Sobrenome', Address AS 'Endereço'
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT CustomerId, LOWER(FirstName) AS 'Nome', UPPER(LastName) AS 'Sobrenome', Address AS 'Endereço'
FROM customers
WHERE Country LIKE 'Brazil'


-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT CustomerId, FirstName AS 'Nome', UPPER(LastName) AS 'Sobrenome', Address AS 'Endereço', FirstName || ' ' || LastName AS 'Nome completo'
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT CustomerId, FirstName AS 'Nome', UPPER(LastName) AS 'Sobrenome', REPLACE(Address, 'Av.', 'Avenida') AS 'Endereço'
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT CustomerId, FirstName AS 'Nome', UPPER(LastName) AS 'Sobrenome', REPLACE(Address, 'Av.', 'Avenida') AS 'Endereço'
FROM customers
WHERE Country LIKE 'Braz%'