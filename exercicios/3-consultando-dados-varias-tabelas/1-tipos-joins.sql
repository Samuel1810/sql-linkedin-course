-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
SELECT *
FROM artists LEFT JOIN albums
ON artists.ArtistId = albums.ArtistId;