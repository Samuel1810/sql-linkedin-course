-- Atualize a classe salarial para a pessoa cujo EmployeeId é igual a 6. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE employees
SET id_salario = 3
WHERE EmployeeId = 6;

-- Atualize a classe salarial e o LastName da pessoa cujo EmployeeId é igual a 2. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE employees
SET id_salario = 4,
LastName = 'Leão'
WHERE EmployeeId = 1;


-- Atualize a classe salarial 1 para as pessoas cuja coluna id_salario continua NULL. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE employees
SET id_salario = 1
WHERE id_salario IS NULL

-- Outras 
UPDATE customers
SET Company = 'Panasonic'
WHERE Company IS NULL;

UPDATE playlists
SET Name = 'A night at the opera'
WHERE Name = 'Movies';