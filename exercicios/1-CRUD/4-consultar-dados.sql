-- Crie uma consulta que retorne apenas as colunas "Name", "Composer" e "AlbumId" da tabela "tracks"
SELECT Name, Composer, AlbumId, UnitPrice
FROM tracks

-- Repita a consulta anterior e dessa vez filtre os registros para que retornem apenas as tracks com o atributo "AlbumId" igual a 1
SELECT Name, Composer, AlbumId
FROM tracks
WHERE AlbumId = 1;

-- Outras
SELECT TrackId, Name, Composer, AlbumId
FROM tracks
WHERE GenreId = 17

SELECT TrackId, Name, UnitPrice
FROM tracks
WHERE UnitPrice > 0.99

SELECT FirstName, LastName, City
FROM employees 
WHERE City = 'Calgary'

SELECT FirstName, LastName, State
FROM customers
WHERE State = 'SP'
